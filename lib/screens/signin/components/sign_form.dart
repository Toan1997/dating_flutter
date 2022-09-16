import 'package:dating_flutter/screens/signin/components/login_success.dart';
import 'package:flutter/material.dart';
import '../../../components/custome_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget{
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildTextFormField(),
          SizedBox(height: getProportionScreenWidth(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionScreenWidth(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionScreenWidth(20)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                    setState(() {
                      remember = value!;
                    });
                  }),
              Text("Remenber me"),
              Spacer(),
              Text("Forgot password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(height: getProportionScreenWidth(20)),
          DefaultButton(text: 'Continue', press: () {
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return LoginSuccess();
                },
              ),
            );
          })
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if(value.length >= 8 && errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
        }else if(value.length < 8 && !errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          suffixIcon: CustomSuffixIcon(iconData: Icons.lock_sharp)
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
        }else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          suffixIcon: CustomSuffixIcon(iconData: Icons.lock_sharp)
      ),
    );
  }
}
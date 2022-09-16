import 'package:flutter/material.dart';
import '../../../../components/custome_suffix_icon.dart';

class SettingForm extends StatefulWidget{
  @override
  State<SettingForm> createState() => _SettingFormState();
}
class _SettingFormState extends State<SettingForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  @override
  Widget build(BuildContext context) {
   return Form(
     key: _formKey,
     child: Column(
        children: [
          buildTextFormField(),
        ],
      ),
   );
  }
  TextFormField buildTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          suffixIcon: CustomSuffixIcon(iconData: Icons.lock_sharp),
      ),
    );
  }
}

import 'package:dating_flutter/screens/signin/components/socal_icon.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../size_config.dart';
import '../../signup/components/sign_form.dart';
import '../../signup/signup_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

}
class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.screenHeght! * 0.04),
                      Text('Welcome Back',style: TextStyle(
                          fontSize: getProportionScreenWidth(28),
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('Sign in with your email and password \nor continue with social media.',textAlign: TextAlign.center),
                      SizedBox(height: SizeConfig.screenHeght! * 0.08),
                      SignForm(),
                      SizedBox(height: SizeConfig.screenHeght! * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocalIcon(iconSrc: 'assets/icons/google-icon.svg',press: (){}),
                          SocalIcon(iconSrc: 'assets/icons/facebook.svg',press: (){}),
                          SocalIcon(iconSrc: 'assets/icons/twitter.svg',press: (){}),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenHeght! * 0.03),
                      AlreadyHaveAnAccountCheck( press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return SignupScreen();
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






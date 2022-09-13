import 'package:dating_flutter/screens/signin/components/body.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget{
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text( "Sign In",
          style: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: Body(),
    );
  }

}
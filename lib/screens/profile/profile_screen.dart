import 'package:dating_flutter/models/profile.dart';
import 'package:dating_flutter/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(profile: demoProfile[1]),
    );
  }
}
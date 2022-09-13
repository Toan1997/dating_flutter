import 'package:flutter/material.dart';
import '../profile/components/body.dart';
import 'components/app_bar_content.dart';

class ProfileScreen extends StatelessWidget{
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:PreferredSize(
       preferredSize:  Size.fromHeight(AppBar().preferredSize.height),
       child:  AppBarContent(),
     ),
     body: Body(),
   );
  }

}
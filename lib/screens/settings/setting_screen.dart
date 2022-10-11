import 'package:flutter/material.dart';
import '../../components/footer_content.dart';
import '../settings/components/body.dart';
import 'components/app_bar_content.dart';

class SettingScreen extends StatelessWidget{
  static String routeName = "/settings";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:PreferredSize(
       preferredSize:  Size.fromHeight(100),
       child:  AppBarContent(title: "Profile"),
     ),
     body: Body(),
     bottomNavigationBar: FooterContent(route: routeName),
   );
  }

}


import 'package:flutter/material.dart';
import '../../components/footer_content.dart';
import '../profile/components/body.dart';
import 'components/app_bar_content.dart';

class ProfileScreen extends StatelessWidget{
  static String routeName = "/profile";
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


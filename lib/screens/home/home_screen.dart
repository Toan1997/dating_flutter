import 'package:flutter/material.dart';
import '../../components/footer_content.dart';
import '../home/components/body.dart';
import '../settings/components/app_bar_content.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize:  Size.fromHeight(90),
        child:  AppBarContent(title: "Profile"),
      ),
      body: Body(),
      bottomNavigationBar: FooterContent(route: routeName),
    );
  }
}

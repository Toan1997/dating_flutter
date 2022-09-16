import 'package:flutter/material.dart';
import '../../../components/app_bar_content_back.dart';
import '../../../components/footer_content.dart';
import '../../profile/edit/components/body.dart';
class EditProfileScreen extends StatelessWidget{
  static String routeName = "/edit_profile";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:PreferredSize(
       preferredSize:  Size.fromHeight(100),
       child: AppBarContentBack(name: 'Edit Profile'),
     ),
     body: Body(),
     bottomNavigationBar: FooterContent(),
   );
  }

}


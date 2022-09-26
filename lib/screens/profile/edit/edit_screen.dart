import 'package:dating_flutter/constants.dart';
import 'package:dating_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/app_bar_content_back.dart';
import '../../../components/footer_content.dart';
import '../../profile/edit/components/body.dart';
import 'components/btn_save_changes_buttom.dart';
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
     bottomNavigationBar: BtnSaveChangesButtom(),
   );
  }

}



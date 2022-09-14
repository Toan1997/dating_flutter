import 'package:dating_flutter/constants.dart';
import 'package:dating_flutter/screens/profile/components/avatar_setting.dart';
import 'package:dating_flutter/screens/profile/components/setting_column.dart';
import 'package:dating_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/rounded_icon.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Column(
       children: [
         Container(
           child: Column(
             children: [
               AvatarSetting(avatarSrc: 'https://okr.dinco.app/app-assets/images/portrait/small/avatar.webp',name: "Adam Smith"),

             ],
           ),
         ),
         SettingColumn(iconData: Icons.person_sharp,name: 'Edit Profile',press: (){}),
         SettingColumn(iconData: Icons.notifications_sharp,name: 'Notification',press: (){}),
         SettingColumn(iconData: Icons.lock_sharp,name: 'Security',press: (){}),
       ],
     )

   );
  }
}



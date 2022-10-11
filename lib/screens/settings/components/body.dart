import 'package:dating_flutter/screens/settings/components/avatar_setting.dart';
import 'package:dating_flutter/screens/settings/components/setting_column.dart';
import 'package:flutter/material.dart';
import '../edit/edit_profile_screen.dart';

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
         SettingColumn(iconData: Icons.person_sharp,name: 'Edit Profile',press: (){
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context){
                 return EditProfileScreen();
               },
             ),
           );
         }),
         SettingColumn(iconData: Icons.notifications_sharp,name: 'Notification',press: (){}),
         SettingColumn(iconData: Icons.lock_sharp,name: 'Security',press: (){}),
       ],
     )

   );
  }
}



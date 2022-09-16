import 'package:dating_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../components/footer_content.dart';
import '../../components/square_icon_btn.dart';
import '../../components/square_icon_btn_footer.dart';
import '../profile/components/body.dart';
import 'components/app_bar_content.dart';

class ProfileScreen extends StatelessWidget{
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:PreferredSize(
       preferredSize:  Size.fromHeight(100),
       child:  AppBarContent(),
     ),
     body: Body(),
     bottomNavigationBar: FooterContent(),
   );
  }

}


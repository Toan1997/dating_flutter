import 'package:flutter/material.dart';
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

class FooterContent extends StatelessWidget {
  const FooterContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 3.0,
            ),
          ],
      ),
      child: Row(
        children: [

        ],
      ),
    );
  }
}
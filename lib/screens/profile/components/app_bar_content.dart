import 'package:flutter/material.dart';
import '../../../components/rounded_icon_title.dart';
import '../../../components/square_icon_btn.dart';
import '../../../size_config.dart';

class AppBarContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!,vertical:getProportionScreenHeight(30)!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RoundedIconTitle(iconData: Icons.emergency_outlined),
                    SizedBox(width: getProportionScreenWidth(20)),
                    Text('Profile',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                    ),
                  ],
                ),
              ),
            Container(
              child: Row(
                children: [
                  SquareIconBtn(iconData: Icons.edit_sharp,press: (){}),
                  SizedBox(width: getProportionScreenWidth(20)),
                  SquareIconBtn(iconData: Icons.more_vert_outlined,press: (){}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
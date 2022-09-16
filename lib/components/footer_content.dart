import 'package:dating_flutter/components/square_icon_btn_footer.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SquareIconBtnFooter(iconData: Icons.home_sharp,press: (){}),
            SquareIconBtnFooter(iconData: Icons.place_sharp,press: (){}),
            SquareIconBtnFooter(iconData: Icons.favorite_sharp,press: (){}),
            SquareIconBtnFooter(iconData: Icons.message_sharp,press: (){}),
            SquareIconBtnFooter(iconData: Icons.person_sharp,press: (){},active: true),
          ],
        ),
      ),
    );
  }
}
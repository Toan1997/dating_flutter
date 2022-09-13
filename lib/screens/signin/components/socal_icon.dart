import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';


class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function() press;
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child:  Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color:Color(0xFFF5F6F9),
            border: Border.all(width: 2,color: Color(0xFFF5F6F9)),
            shape: BoxShape.circle
        ),
        child: SvgPicture.asset(iconSrc,width: getProportionScreenWidth(20),height: getProportionScreenHeight(20)),
      ),
    );
  }
}

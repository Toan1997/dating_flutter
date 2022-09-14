import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SquareIconBtn extends StatelessWidget {
  final IconData iconData;
  final Function() press;

  const SquareIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: getProportionScreenWidth(40),
      child: AspectRatio(
        aspectRatio: 1,
        child: InkWell(
          onTap: press,
          child: Container(
            decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(iconData,color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
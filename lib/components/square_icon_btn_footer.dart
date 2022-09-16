import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SquareIconBtnFooter extends StatelessWidget {
  final IconData iconData;
  final Function() press;
  final bool active;
  const SquareIconBtnFooter({
    Key? key,
    required this.iconData,
    required this.press,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: getProportionScreenWidth(50),
      child: AspectRatio(
        aspectRatio: 1.3,
        child: InkWell(
          onTap: press,
          child: Container(
            decoration: BoxDecoration(
              color: active ?  kPrimaryColor :  kPrimaryLightColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(iconData,color: active ?  Colors.white  : kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
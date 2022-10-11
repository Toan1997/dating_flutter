import 'package:flutter/material.dart';
import '../../../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData iconData;
  final Function() press;

  const RoundedIconBtn({
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
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
            child: Icon(iconData),
          ),
        ),
      ),
    );
  }
}
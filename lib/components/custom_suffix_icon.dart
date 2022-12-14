import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  final IconData iconData;
  const CustomSuffixIcon({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionScreenWidth(20)!,
        getProportionScreenWidth(20)!,
        getProportionScreenWidth(20)!,
      ),
      child:Icon(
        iconData,
      ),
    );
  }
}
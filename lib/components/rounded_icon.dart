import 'package:dating_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class RoundedIcon extends StatelessWidget {
  final IconData iconData;
  const RoundedIcon({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          shape: BoxShape.circle
      ),
      child:  Icon(iconData,color: kPrimaryColor,size: 30)
    );
  }
}

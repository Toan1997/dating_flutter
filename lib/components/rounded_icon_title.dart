import 'package:dating_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class RoundedIconTitle extends StatelessWidget {
  final IconData iconData;
  const RoundedIconTitle({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          shape: BoxShape.circle
      ),
      child:  Icon(iconData,color: Colors.white,size: 20)
    );
  }
}

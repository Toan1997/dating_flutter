import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BtnFloatingAction extends StatelessWidget {
  final IconData icon;
  final bool isFavorite;
  const BtnFloatingAction({
    super.key,
    required this.icon,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isFavorite ? getProportionScreenWidth(60) : getProportionScreenWidth(50),
      width: isFavorite ? getProportionScreenWidth(60) : getProportionScreenWidth(50),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          color: kPrimaryColor,
          size: 30,
        ),
      ),
    );
  }
}
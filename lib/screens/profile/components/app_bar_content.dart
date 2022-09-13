import 'package:dating_flutter/screens/profile/components/rounded_icon.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class AppBarContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIcon()
            ],
          ),
        ),
      ),
    );
  }

}
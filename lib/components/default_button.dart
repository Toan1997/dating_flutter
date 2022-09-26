import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() press;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      minimumSize: Size(50, 50),
      backgroundColor: kPrimaryColor,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(56),
      child: TextButton(
        style: flatButtonStyle,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionScreenWidth(18),
              color: Colors.white
          ),
        ),

      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';
class BtnSaveChangesButtom extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(50, 50),
    backgroundColor: kPrimaryColor,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!,vertical: getProportionScreenWidth(20)!),
      child: Container(
        child: ButtonTheme(
          minWidth: 60.0,
          height: 60.0,
          child: TextButton(
            style: flatButtonStyle,
            onPressed: () {},
            child: Text("Save changes"),
          ),
        ),
      ),
    );
  }
}

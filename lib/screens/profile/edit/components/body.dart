import 'package:dating_flutter/screens/profile/edit/components/setting_form.dart';
import 'package:flutter/material.dart';
import '../../../../size_config.dart';
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
      child:  SettingForm(),
    );
  }

}
import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeght;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeght = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }

}

double? getProportionScreenHeight(double inputHeight){
  double? screenHeight =  SizeConfig.screenHeght;
  return (inputHeight / 812.0) * screenHeight!;
}

double? getProportionScreenWidth(double inputWidth){
  double? screenWidth =  SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth!;
}
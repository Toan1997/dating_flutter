import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme() ,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

TextTheme textTheme(){
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme(){
  return  AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
      );
}

InputDecorationTheme inputDecorationTheme(){
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10
  );
  return InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(
          horizontal: 42, vertical: 20
      ),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder
  );
}

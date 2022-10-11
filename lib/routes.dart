import 'package:dating_flutter/screens/home/home_screen.dart';
import 'package:dating_flutter/screens/profile/profile_screen.dart';
import 'package:dating_flutter/screens/settings/edit/edit_profile_screen.dart';
import 'package:dating_flutter/screens/settings/setting_screen.dart';
import 'package:dating_flutter/screens/signin/components/login_success.dart';
import 'package:dating_flutter/screens/signin/signin_screen.dart';
import 'package:dating_flutter/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  EditProfileScreen.routeName: (context) => EditProfileScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),

};
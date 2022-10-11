import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';
import '../../settings/setting_screen.dart';

class LoginSuccess extends StatelessWidget{
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text( "Login Success",
          style: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeght! * 0.05),
            Image.asset(
              'assets/images/success.png',
              height: SizeConfig.screenHeght! * 0.4,
            ),
            SizedBox(height: SizeConfig.screenHeght! * 0.15),
            Text('Login Success',
                style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: SizeConfig.screenHeght! * 0.05),
            SizedBox(
              width: getProportionScreenWidth(256),
              child: Container(
                  child: DefaultButton(text: "Back to home", press: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return SettingScreen();
                        },
                      ),
                    );
                  }),
              ),
            )
          ],
        ),
      ),
    );
  }

}
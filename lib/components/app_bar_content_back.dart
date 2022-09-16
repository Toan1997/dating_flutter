import 'package:dating_flutter/constants.dart';
import 'package:flutter/material.dart';
import '../../../components/rounded_icon_title.dart';
import '../../../components/square_icon_btn.dart';
import '../../../size_config.dart';

class AppBarContentBack extends StatelessWidget{
  final String name;
  const AppBarContentBack(
      {
        Key? key,
        required this.name
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!,vertical:getProportionScreenHeight(30)!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context,true);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(width: getProportionScreenWidth(20)),
                  Text(name,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import '../../../components/rounded_icon.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SettingColumn extends StatelessWidget {
  final IconData iconData;
  final String name;
  final Function() press;
  const SettingColumn({
    Key? key,
    required this.iconData,
    required this.name,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child:  Center(
                child:  Container(
                  margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 1.0,
                  color: Colors.black12,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                  top: getProportionScreenWidth(15)!,
                  bottom: getProportionScreenWidth(15)!
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        RoundedIcon(iconData: iconData),
                        SizedBox(width: getProportionScreenWidth(15)),
                        Text(name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: getProportionScreenWidth(15),
                                fontWeight: FontWeight.bold
                            ))
                      ],
                    ),
                  ),
                  Container(
                    child:  Icon(
                      Icons.navigate_next_outlined,
                      color: kPrimaryColor,
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
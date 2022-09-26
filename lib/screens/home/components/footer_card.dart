import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'btn_floating_Action.dart';
class FooterCard extends StatelessWidget {
  const FooterCard({
    super.key,
    required this.isCurrent,
    required this.text,
  });

  final bool isCurrent;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isCurrent,  //set this to either true or false
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Positioned(
              bottom: getProportionScreenWidth(40),
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(text,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      Text("$text details",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BtnFloatingAction(icon: Icons.close),
                  SizedBox(width: 10),
                  BtnFloatingAction(icon: Icons.favorite_border,isFavorite: true),
                  SizedBox(width: 10),
                  BtnFloatingAction(icon: Icons.star_border),
                ],
              ),
            ),
          ],
        )
    );
  }
}

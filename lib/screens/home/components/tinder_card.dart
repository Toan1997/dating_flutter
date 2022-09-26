import 'package:dating_flutter/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'btn_floating_Action.dart';
import 'footer_card.dart';

class TinderCard extends StatelessWidget {
  final String text;
  final bool isCurrent;
  const TinderCard({
    Key? key,
    this.text = "Card View",
    this.isCurrent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/rose.jpg'),
                    fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                    colors: [ kPrimaryLightColor, kPrimaryColor],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter
                ),
              ),
            ),
          ),
          FooterCard(isCurrent: isCurrent, text: text),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class AvatarSetting extends StatelessWidget {
  final String avatarSrc;
  final String name;
  const AvatarSetting({
    Key? key,
    required this.avatarSrc,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: getProportionScreenWidth(23)!),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(8), // Border width
                decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50), // Image radius
                    child: Image.network(avatarSrc, fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                bottom: getProportionScreenWidth(10),
                right: getProportionScreenWidth(-8),
                child: Container(
                  height: getProportionScreenWidth(30),
                  width: getProportionScreenHeight(30),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(
                      Icons.edit_sharp,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ]
      ),
    );
  }
}

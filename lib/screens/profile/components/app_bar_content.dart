import 'package:dating_flutter/screens/profile/components/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class AppBarContent extends StatelessWidget {
  const AppBarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)!),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedIconBtn(iconData: Icons.arrow_back, press: () => Navigator.pop(context)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Text("aaa",style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 5),
                    SvgPicture.asset('assets/icons/Star Icon.svg')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

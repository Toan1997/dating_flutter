import 'package:dating_flutter/constants.dart';
import 'package:dating_flutter/screens/profile/components/profile_images.dart';
import 'package:dating_flutter/screens/profile/components/top_rounded_container.dart';
import 'package:dating_flutter/size_config.dart';
import 'package:flutter/material.dart';
import '../../../models/profile.dart';

class Body extends StatelessWidget{
  final Profile profile;
  const Body({
    Key? key, required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          iconTheme: IconThemeData(
            color: kPrimaryColor,
          ),
          expandedHeight: getProportionScreenWidth(450),
          flexibleSpace: Flexible(
            child: Column(
              children: [
                ProfileImages(profile: profile),
              ],
            )
          )
        )
      ],
    );
  }
}







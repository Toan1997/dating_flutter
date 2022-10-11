import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../components/hex_color.dart';
import '../../../size_config.dart';

class RoundedIcon extends StatelessWidget {

  const RoundedIcon({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child:  Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color:Color(0xFFF5F6F9),
            border: Border.all(width: 2,color: Color(0xFFF5F6F9)),
            shape: BoxShape.circle
        ),
        child: SvgPicture.asset('assets/icons/google-icon.svg'),

      ),
    );
  }
}


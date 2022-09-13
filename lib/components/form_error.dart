import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(errors.length, (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/Error.svg'),
        SizedBox(
          width: getProportionScreenWidth(20),
        ),
        Text(error),
      ],
    );
  }
}
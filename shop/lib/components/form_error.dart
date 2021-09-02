import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/resources/resources.dart';

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
      children: List.generate(
        errors.length,
            (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          Svg_s.error,
          height: SizeConfig.getProportionateScreenHeight(14),
          width: SizeConfig.getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: SizeConfig.getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
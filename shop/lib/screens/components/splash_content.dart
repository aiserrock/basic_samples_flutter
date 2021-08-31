import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            fontSize: SizeConfig.getProportionateScreenWidth(36),
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: SizeConfig.getProportionateScreenHeight(265),
          width: SizeConfig.getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
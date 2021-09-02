import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSuffix extends StatelessWidget {
  const CustomSuffix({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SizeConfig.getProportionateScreenWidth(20),
        SizeConfig.getProportionateScreenWidth(20),
        SizeConfig.getProportionateScreenWidth(20),
        SizeConfig.getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: SizeConfig.getProportionateScreenWidth(18),
      ),
    );
  }
}
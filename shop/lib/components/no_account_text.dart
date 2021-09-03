import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/forgot_password/forgot_password_screen.dart';

import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style:
              TextStyle(fontSize: SizeConfig.getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(
              context, ForgotPasswordScreen.routeName),
          child: Text(
            'Sign Up',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: SizeConfig.getProportionateScreenWidth(16)),
          ),
        ),
      ],
    );
  }
}

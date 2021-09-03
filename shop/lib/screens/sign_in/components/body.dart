import 'package:flutter/material.dart';
import 'package:shop/components/no_account_text.dart';
import 'package:shop/components/social_card.dart';
import 'package:shop/resources/resources.dart';
import 'package:shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop/screens/sign_in/components/sign_form.dart';
import 'package:shop/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sign in with your email and password \nor continue with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08,),
              SignForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: Svg_s.googleIcon,
                    press: () {},
                  ),
                  SocialCard(
                    icon: Svg_s.facebook2,
                    press: () {},
                  ),
                  SocialCard(
                    icon: Svg_s.twitter,
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08,),
              NoAccountText(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08,),
            ],
          ),
        ),
      ),
    );
  }
}


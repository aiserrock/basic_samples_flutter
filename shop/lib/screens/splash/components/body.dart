import 'package:flutter/material.dart';
import 'package:shop/components/default_button.dart';
import 'package:shop/constants.dart';
import 'package:shop/resources/resources.dart';
import 'package:shop/screens/sign_in/sign_in_screen.dart';
import 'package:shop/screens/splash/components/splash_content.dart';
import 'package:shop/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to Tokoto, Let\'s shop!',
      'image': Images.splash1,
    },
    {
      'text':
          'We help people connect with store \naround United State of America',
      'image': Images.splash2,
    },
    {
      'text': 'We show the easy way to shop. \nJust stay at home with us',
      'image': Images.splash3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: 'Continue',
                      press: (){
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      padding: EdgeInsets.only(
        right: 5,
      ),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
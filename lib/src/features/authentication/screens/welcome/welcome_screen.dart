// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:dog_final/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:dog_final/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:dog_final/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:dog_final/src/constants/colors.dart';
import 'package:dog_final/src/constants/image_strings.dart';
import 'package:dog_final/src/constants/sizes.dart';
import 'package:dog_final/src/constants/text_strings.dart';
import 'package:dog_final/src/features/authentication/screens/login/login_screen.dart';
import 'package:dog_final/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var size = MediaQuery.of(context).size;
    var brightness = MediaQuery.platformBrightnessOf(context);

    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          tFadeInAnimation(
            durationInMs: 1200,
            animate: tAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    image: AssetImage(tWelcomeScreenImg),
                    height: size.height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => LoginScreen()),
                          child: Text(tWelcomeScreenLogin.toUpperCase()),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => SignUpScreen()),
                          child: Text(
                            tWelcomeScreenSignup.toUpperCase(),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

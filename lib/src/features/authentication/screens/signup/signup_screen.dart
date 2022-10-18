// ignore_for_file: prefer_const_constructors

import 'package:dog_final/src/constants/image_strings.dart';
import 'package:dog_final/src/constants/sizes.dart';
import 'package:dog_final/src/constants/text_strings.dart';
import 'package:dog_final/src/features/authentication/screens/signup/signup_form.dart';
import 'package:dog_final/src/widgets/form_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImg,
                  title: tSignupTitle,
                  subTitle: tSignupSubTitle,
                ),

                //FORM
                SignUpFormWidget(),
                Column(
                  children: [
                    Text('OR'),
                    SizedBox(height: tFormHeight),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: SvgPicture.asset(
                          tGoogleLogo,
                          width: 25.0,
                        ),
                        label: Text(tSignInWithGoogle.toUpperCase()),
                        onPressed: () {},
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: tAlreadyHaveAnAccount,
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(text: tLogin.toUpperCase()),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('OR'),
        SizedBox(
          height: tFormHeight,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: SvgPicture.asset(
              tGoogleLogo,
              width: 25.0,
            ),
            onPressed: () {},
            label: Text(tSignInWithGoogle.toUpperCase()),
          ),
        ),
        SizedBox(height: tFormHeight - 20),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              text: tDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyText1,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TextSpan(
                  text: tSignUp,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

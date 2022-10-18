// ignore_for_file: prefer_const_constructors

import 'package:dog_final/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Input FullName
            TextFormField(
              decoration: InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            SizedBox(height: tFormHeight),

            //Input Email
            TextFormField(
              decoration: InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_rounded),
              ),
            ),
            SizedBox(height: tFormHeight),

            //Input Phone#
            TextFormField(
              decoration: InputDecoration(
                label: Text(tPhoneNum),
                prefixIcon: Icon(Icons.phone_iphone_rounded),
              ),
            ),
            SizedBox(height: tFormHeight),

            //Input FullName
            TextFormField(
              decoration: InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.fingerprint_rounded),
              ),
            ),
            SizedBox(height: tFormHeight),

            //SignUp Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tSignUp.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

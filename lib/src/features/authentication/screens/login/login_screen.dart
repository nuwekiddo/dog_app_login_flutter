// ignore_for_file: prefer_const_constructors

import 'package:dog_final/src/constants/sizes.dart';
import 'package:dog_final/src/features/authentication/screens/login/login_form.dart';
import 'package:dog_final/src/features/authentication/screens/login/login_header.dart';
import 'package:flutter/material.dart';

import 'login_footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),

                //FORM
                LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

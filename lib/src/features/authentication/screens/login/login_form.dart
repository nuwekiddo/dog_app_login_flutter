// ignore_for_file: prefer_const_constructors

import 'package:dog_final/src/constants/sizes.dart';
import 'package:dog_final/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: tEmail,
              hintText: tEmail,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: tFormHeight,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.fingerprint_outlined),
              labelText: tPassword,
              hintText: tPassword,
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(tForgetPassword),
            ),
          ),
          SizedBox(height: tFormHeight - 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(tLogin.toUpperCase())),
          )
        ],
      ),
    ));
  }
}

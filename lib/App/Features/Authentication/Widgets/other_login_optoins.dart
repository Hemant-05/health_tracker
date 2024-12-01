import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/ImageStrings.dart';

Row other_login_options() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(
        onPressed: () {
          // code for facebook log in
        },
        icon: Image.asset(
          ImageStrings.facebookIcon,
          width: 30,
        ),
      ),
      IconButton(
        onPressed: () {
          // code for apple log in
        },
        icon: Image.asset(
          ImageStrings.appleIcon,
          width: 30,
        ),
      ),
      IconButton(
        onPressed: () {
          // code for google log in
        },
        icon: Image.asset(
          ImageStrings.googleIcon,
          width: 30,
        ),
      ),
    ],
  );
}

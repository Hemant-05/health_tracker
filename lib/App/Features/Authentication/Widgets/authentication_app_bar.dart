import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/back_button.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';

AppBar AuthenticationAppBar(BuildContext context,String title) {
  return AppBar(
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: MyColors.white),
    ),
    leading: backButton(context),
    centerTitle: true,
    backgroundColor: MyColors.primary,
  );
}
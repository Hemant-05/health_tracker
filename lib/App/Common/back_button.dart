import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Utils/Constants/IconsStrings.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

IconButton backButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      MyHelperFunctions.popUp(context);
    },
    icon: SvgPicture.asset(
      IconsString.backIcon,
    ),
  );
}
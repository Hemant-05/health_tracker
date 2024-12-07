import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

InkWell MyIconButton(String icon, VoidCallback fun, BuildContext context) {
  bool isDark = MyHelperFunctions.isDarkMode(context);
  return InkWell(
    onTap: fun,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: MySizes.lg,
      width: MySizes.lg,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColors.secondary,
        borderRadius: BorderRadius.circular(MySizes.borderRadiusXl),
      ),
      child: SvgPicture.asset(icon,
          color: isDark ? MyColors.white : MyColors.black),
    ),
  );
}
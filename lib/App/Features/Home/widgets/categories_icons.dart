import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

Padding categoriesIcon(BuildContext context, String icon, String category) {
  bool isDark = MyHelperFunctions.isDarkMode(context);
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        SvgPicture.asset(
          icon,
          color: isDark ? MyColors.white : MyColors.black,
        ),
        Text(category, style: Theme.of(context).textTheme.labelLarge),
      ],
    ),
  );
}
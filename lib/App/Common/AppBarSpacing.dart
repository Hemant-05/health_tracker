import 'package:flutter/cupertino.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';

class MyAppBarSpacing{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MySizes.appBarHeight,
    left: MySizes.defaultSpace,
    right: MySizes.defaultSpace,
    bottom: MySizes.defaultSpace,
  );
}
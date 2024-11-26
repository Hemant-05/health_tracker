import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';

class MyElevatedButton extends StatelessWidget {
  MyElevatedButton({
    super.key, required this.fun, required this.text, this.color = MyColors.primary
  });

  final VoidCallback fun;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MyDeviceUtils.getScreenWidth(context) * 0.6,
      child: ElevatedButton(
        onPressed: fun,
        style: ElevatedButton.styleFrom(backgroundColor: color,side: BorderSide(color: color)),
        child: Text(text,style: TextStyle(color: color == MyColors.primary? MyColors.white : MyColors.primary),),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.fun,
      required this.text,
      this.color = MyColors.primary});

  final VoidCallback fun;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MyDeviceUtils.getScreenWidth(context) * 0.6,
        child: InkWell(
          onTap: fun,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 24,
                  color: color == MyColors.primary
                      ? MyColors.white
                      : MyColors.primary),
            ),
          ),
        ));
  }
}
/* ElevatedButton(
        onPressed: fun,
        style: ElevatedButton.styleFrom(backgroundColor: color,side: BorderSide(color: color)),
        child: Text(text,style: TextStyle(color: color == MyColors.primary? MyColors.white : MyColors.primary),),
      ),*/

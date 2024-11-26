import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/MyElevatedButton.dart';
import 'package:health_tracker/App/Features/OnBoarding/Controller/OnBoardingController.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      right: MyDeviceUtils.getScreenWidth(context) * .2,
      child: MyElevatedButton(fun: ()=> OnBoardingController.instance.nextPage(), text: TextStrings.next)
    );
  }
}
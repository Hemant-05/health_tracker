import 'package:flutter/material.dart';
import 'package:health_tracker/App/Common/widgets/custom_elevated_button.dart';
import 'package:health_tracker/App/Features/OnBoarding/Controller/on_boarding_controller.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
        right: MyDeviceUtils.getScreenWidth(context) * .2,
        child: CustomElevatedButton(
            fun: () => OnBoardingController.instance.nextPage(),
            text: TextStrings.next));
  }
}

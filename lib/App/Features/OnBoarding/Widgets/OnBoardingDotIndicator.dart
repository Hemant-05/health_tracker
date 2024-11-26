
import 'package:flutter/material.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Controller/OnBoardingController.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyDeviceUtils.getAppBarHeight() * 3,
      right: MyDeviceUtils.getScreenWidth(context) * .35,
      child: SmoothPageIndicator(
        controller: OnBoardingController.instance.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark? MyColors.white : MyColors.primary ),
      ),
    );
  }
}

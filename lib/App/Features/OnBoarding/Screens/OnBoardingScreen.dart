import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_tracker/App/Common/MyElevatedButton.dart';
import 'package:health_tracker/App/Features/OnBoarding/Controller/OnBoardingController.dart';
import 'package:health_tracker/App/Features/OnBoarding/Widgets/OnBoardingButton.dart';
import 'package:health_tracker/App/Features/OnBoarding/Widgets/OnBoardingDotIndicator.dart';
import 'package:health_tracker/App/Features/OnBoarding/Widgets/OnBoardingPage.dart';
import 'package:health_tracker/App/Features/OnBoarding/Widgets/OnBoardingSkip.dart';
import 'package:health_tracker/App/Utils/Constants/ImageStrings.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
class ONBoardingScreen extends StatelessWidget {
  const ONBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TextStrings.onBoardingTitle1,
                image: ImageStrings.first_onBoarding_image,
                subTitle: TextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                title: TextStrings.onBoardingTitle2,
                image: ImageStrings.second_onBoarding_image,
                subTitle: TextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                title: TextStrings.onBoardingTitle3,
                image: ImageStrings.thrid_onBoarding_image,
                subTitle: TextStrings.onBoardingSubTitle3,
              )
            ],
          ),
          const OnBoardingDotIndicator(),
          const OnBoardingSkip(),
          const OnBoardingButton(),
        ],
      ),
    );
  }
}




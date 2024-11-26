import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/OnBoarding/Controller/OnBoardingController.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: MyDeviceUtils.getAppBarHeight() + 25,
      right: MySizes.defaultSpace,
      child: Row(
        children: [
          TextButton(
            onPressed: OnBoardingController.instance.skipPage,
            child: const Text(
              "Skip",style: TextStyle(fontSize: 20),
            ),
          ),
          const Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}

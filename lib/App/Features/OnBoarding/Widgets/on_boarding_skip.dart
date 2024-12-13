import 'package:flutter/material.dart';
import 'package:health_tracker/App/Features/OnBoarding/Controller/on_boarding_controller.dart';
import 'package:health_tracker/App/Utils/Constants/MyColors.dart';
import 'package:health_tracker/App/Utils/Constants/MySizes.dart';
import 'package:health_tracker/App/Utils/Constants/TextStrings.dart';
import 'package:health_tracker/App/Utils/Device/DeviceUtility.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      height: MyDeviceUtils.getAppBarHeight() + 50,
      right: MySizes.defaultSpace,
      child: InkWell(
        onTap: () => OnBoardingController.instance.skipPage(context),
        child: Row(
          children: [
            Text(
              TextStrings.skip,
              style: TextStyle(
                  color: isDark ? MyColors.white : Colors.black, fontSize: 20),
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}

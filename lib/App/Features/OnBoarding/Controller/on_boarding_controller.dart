import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:health_tracker/App/Features/Authentication/Screens/start_screen.dart';
import 'package:health_tracker/App/Utils/Helpers/Helpers.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void nextPage() {
    if (currentPageIndex.value == 2) {
      MyHelperFunctions.navigateToScreenRemoveUntil(Get.context!, const StartScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(BuildContext context) {
    /*currentPageIndex.value = 2;
    pageController.jumpToPage(2);*/
    MyHelperFunctions.navigateToScreen(context, const StartScreen());
  }
}

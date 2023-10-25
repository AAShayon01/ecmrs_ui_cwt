import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constant/colors.dart';
import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';
import '../../../controllers.onboarding/onboardig_controller.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=SHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: SDeviceUtlis.getBottomNavigationBarHeight() + 25,
      left: SSizes.defaultSpace,
      child: SmoothPageIndicator(controller:controller.pageController,
        count: 4,onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(activeDotColor:dark ? SColors.light : SColors.dark,dotHeight: 6 ),
      ),


    );
  }
}
import 'package:ecmrs_ui_fbase/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:ecmrs_ui_fbase/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:ecmrs_ui_fbase/utils/constant/colors.dart';
import 'package:ecmrs_ui_fbase/utils/constant/image_strings.dart';
import 'package:ecmrs_ui_fbase/utils/constant/sizes.dart';
import 'package:ecmrs_ui_fbase/utils/constant/text_strings.dart';
import 'package:ecmrs_ui_fbase/utils/device/device_utility.dart';
import 'package:ecmrs_ui_fbase/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboarding_dot_navigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable
          PageView(
            children: const [
              OnBoardingPage(
                  image: SImages.onBoardingImage1,
                  title: STexts.onBoardingTitle1,
                  subTitle: STexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: SImages.onBoardingImage2,
                  title: STexts.onBoardingTitle2,
                  subTitle: STexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: SImages.onBoardingImage3,
                  title: STexts.onBoardingTitle3,
                  subTitle: STexts.onBoardingSubTitle3),
            ],
          ),

          ///skip button
          const OnboardingSkip(),

          ///Dot Nav.. SmoothPageIndicator
         const onBoardingDotNavigation(),
          ///Circular button
          Positioned(
          right: SSizes.defaultSpace,
          bottom: SDeviceUtlis.getBottomNavigationBarHeight(),
          child: ElevatedButton(onPressed: (){}, child: Text("ok")))
        ],
      ),
    );
  }
}



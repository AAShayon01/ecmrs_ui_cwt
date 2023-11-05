import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_Store/features/authentication/screens/onBoarding/widgets/onboarding_next_Button.dart';
import 'package:s_Store/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/constant/image_strings.dart';
import '../../../../utils/constant/text_strings.dart';
import '../../controllers.onboarding/onboardig_controller.dart';
import '../login/login.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    bool onLastpage = false;
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          onBoardingNextButton(),
        ],
      ),
    );
  }
}

 void Done(context) async {
  final pref=await SharedPreferences.getInstance();
  await pref.setBool('OnBoardingScreen', false);
  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
}






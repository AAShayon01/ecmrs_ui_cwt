import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  ///variables
final pageController=PageController();
Rx<int> currentPageIndex=0.obs;
///update current index when page scroll
 void updatePageIndicator(index)=>currentPageIndex.value=index;

  ///jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }
 ///update current index & jump to next page
 void nextPage(){
    if(currentPageIndex.value == 3){
      // Get.to(Loginscreen());
    }else {
      int page =currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
 }
  ///update current index & jump to the next Page
 void skipPage(){
    currentPageIndex.value=3;
    pageController.jumpToPage(3);
 }
}
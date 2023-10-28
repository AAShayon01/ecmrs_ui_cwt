import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_Store/features/shop/screen/home/home.dart';
import 'package:s_Store/features/shop/screen/profile/profile.dart';
import 'package:s_Store/features/shop/screen/store/store.dart';
import 'package:s_Store/features/shop/screen/wishlist/wishlist.dart';
import 'package:s_Store/utils/constant/colors.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(NavigationController());
    final dark=SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=>  NavigationBar(
          height: 60,
             elevation: 0,
             selectedIndex: controller.selectedIndex.value,
             onDestinationSelected:(index) => controller.selectedIndex.value = index ,
             backgroundColor: dark ? SColors.black : SColors.white,
             indicatorColor: dark? SColors.white.withOpacity(.1) : SColors.black.withOpacity(.1),
             destinations: const [
               NavigationDestination(icon:Icon(Iconsax.home), label: 'Home'),
               NavigationDestination(icon:Icon(Iconsax.shop), label: 'Store'),
               NavigationDestination(icon:Icon(Iconsax.heart), label: 'Wishlist'),
               NavigationDestination(icon:Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
     body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex=0.obs ;
    final  screens=[
      const HomeScreen(),
      const StoreScreen(),
      const WishlistScreen(),
     const ProfileScreen()

  ];
}

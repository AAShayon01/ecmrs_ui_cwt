import 'package:flutter/material.dart';

import '../../../../../utils/constant/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtlis.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: const Text("skip"))
    );
  }
}
import 'package:flutter/material.dart';
import 'package:s_Store/utils/constant/colors.dart';
import 'package:s_Store/utils/constant/image_strings.dart';
import 'package:s_Store/utils/constant/sizes.dart';

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const
          Image(
            width: SSizes.iconXLg,
            height: SSizes.iconXLg,
            image: AssetImage(SImages.google),
          ),)
        ),
        const SizedBox(
          width: SSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon:  const Image(
            width: SSizes.iconXLg,
            height: SSizes.iconXLg,
            image: AssetImage(SImages.facebook),
          ),)

        ),
      ],
    );
  }
}
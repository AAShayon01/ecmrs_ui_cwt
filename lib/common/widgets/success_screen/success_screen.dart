import 'package:flutter/material.dart';
import 'package:s_Store/common/styles/spacing_styles.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image,title,subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingwithAppBarHeight * 2,
          child: Column(
            children: [
              Image(image: AssetImage(image),width:SHelperFunctions.screenWidth()*0.6 ,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              ///Title and Subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              ///Button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:onPressed,child: const Text(STexts.Scontinue) ),),
            ],
          ),
        ),
      ),
    );
  }
}

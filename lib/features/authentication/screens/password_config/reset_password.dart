import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_Store/common/widgets/success_screen/success_screen.dart';
import 'package:s_Store/utils/constant/image_strings.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=>Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
            child:Column(
              children: [
                Image(image: AssetImage(SImages.deliveredEmailIllustration),width:SHelperFunctions.screenWidth()*0.6 ,),
                const SizedBox(height: SSizes.spaceBtwSections,),
                ///Title and Subtitle
                Text(STexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: SSizes.spaceBtwItems,),
                Text(STexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: SSizes.spaceBtwSections,),
                ///Button
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed:(){},child: const Text(STexts.done) ),),
                const SizedBox(height: SSizes.spaceBtwItems,),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed:(){},child: const Text(STexts.resendEmail) ),),
              ],
            ) ),
      ),
    );
  }
}

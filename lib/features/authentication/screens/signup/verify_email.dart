import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_Store/common/widgets/success_screen/success_screen.dart';
import 'package:s_Store/features/authentication/screens/login/login.dart';
import 'package:s_Store/utils/constant/image_strings.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()), icon:const Icon(CupertinoIcons.clear))],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding:const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(image: AssetImage(SImages.deliveredEmailIllustration),width:SHelperFunctions.screenWidth()*0.6 ,),
            const SizedBox(height: SSizes.spaceBtwSections,),
            ///Title and Subtitle
              Text(STexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text('support@sstore.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text(STexts.confirmEmailSubtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              ///Buttons
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed:()=>Get.to(()=> SuccessScreen(
                image: SImages.staticSuccessIllustration ,
                title: STexts.yourAccountCreatedtitle ,
                subTitle:STexts.yourAccountCreatedSubtitle ,
                onPressed: ()=>Get.to(()=>const LoginScreen()),
              )),child: const Text(STexts.Scontinue) ),),
              const SizedBox(height: SSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){},child: const Text(STexts.resendEmail),),)
            ],
          ),
        ),
      ),
    );
  }
}

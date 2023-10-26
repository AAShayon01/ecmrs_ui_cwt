import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_Store/features/authentication/screens/password_config/reset_password.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Headings
        Text(STexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
       const SizedBox(height: SSizes.spaceBtwItems,),
        Text(STexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
       const SizedBox(height: SSizes.spaceBtwSections * 2 ),
        ///TextField
         TextFormField(
           decoration: InputDecoration(
             labelText: STexts.email,prefixIcon: Icon(Iconsax.direct_right),
           ),
         ),
          const SizedBox(height: SSizes.spaceBtwSections * 2 ),
        ///Submit button
          SizedBox(width: double.infinity,child: ElevatedButton(
            onPressed: ()=>Get.to(()=>const ResetPassword()),
            child: const Text(STexts.submit),
          ),)

        ///Submit Buttons
        ],
      ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_Store/features/authentication/screens/signup/verify_email.dart';
import 'package:s_Store/features/authentication/screens/signup/widgets/terms_condition.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';

class SSIgnupForm extends StatelessWidget {
  const SSIgnupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark= SHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false ,//
                  decoration: const InputDecoration(
                      labelText: STexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false ,
                  decoration: const InputDecoration(
                      labelText: STexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height:SSizes.spaceBtwInputFields,),
          ///User Name
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.username,prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height:SSizes.spaceBtwInputFields ,),
          ///Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.email ,prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height:SSizes.spaceBtwInputFields ,),
          ///phone
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.phoneNo ,prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height:SSizes.spaceBtwInputFields ,),
          /// password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: STexts.password ,prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwSections,),
          ///Cherckbox for terms and condition
          STermsndCon(),
          const SizedBox(height: SSizes.spaceBtwSections,),
          ///Sign up Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: () =>Get.to(()=> const VerifyEmailScreen()),child: const Text(STexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_Store/utils/constant/colors.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';

class SIgnupForm extends StatelessWidget {
  const SIgnupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
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
          Row(
            children: [
              SizedBox(height:24,width:24,child: Checkbox(value: true, onChanged: (value){})),
              const SizedBox(width: SSizes.spaceBtwItems,),
              Text.rich(TextSpan(children: [
                TextSpan(text: '${STexts.iAgreeTo }  ',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: '${STexts.privacyPolicy }  ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? SColors.white : SColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? SColors.white : SColors.primary,
                )),
                TextSpan(text: '${STexts.and} ',style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: STexts.termOfuse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? SColors.white : SColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? SColors.white : SColors.primary,
                )),


              ]))
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwSections,),
          ///Sign up Button
          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){},child: const Text(STexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
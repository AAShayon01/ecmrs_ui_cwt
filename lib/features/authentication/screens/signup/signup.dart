import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_Store/common/styles/spacing_styles.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              ///title
              Text(
                STexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),

              ///Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false ,
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
                                labelText: STexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:s_Store/features/authentication/screens/password_config/forget_password.dart';
import 'package:s_Store/features/authentication/screens/signup/signup.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: STexts.email,
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: STexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields / 2),

            ///Remember me nad Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(STexts.rememberMe),
                  ],
                ),

                ///Forget Password
                TextButton(
                  onPressed: ()=>Get.to(()=>const ForgetPassword()),
                  child: const Text(STexts.forgetPassword),
                )
              ],
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections,
            ),

            ///Sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary:
                            dark ? Colors.orangeAccent : Colors.blueAccent),
                    child: const Text(
                      STexts.signIn,
                    ))),
            const SizedBox(
              height: SSizes.spaceBtwItems,
            ),

            ///Create Account Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to (()=>const SignupScreen()),
                    style: ElevatedButton.styleFrom(
                        primary:
                            dark ? Colors.orangeAccent : Colors.blueAccent),
                    child: const Text(STexts.createAccount))),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:s_Store/common/styles/widgets.login_signup/form_divider.dart';
import 'package:s_Store/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:s_Store/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark= SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SSIgnupForm(),
              const SizedBox(height: SSizes.spaceBtwSections,),
              SFormDivider(dividerText: STexts.orSignUpWith,),
              SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:s_Store/utils/constant/colors.dart';
import 'package:s_Store/utils/constant/sizes.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';
class STermsndCon extends StatelessWidget {
  const STermsndCon({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark=SHelperFunctions.isDarkMode(context);
    return Row(
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
    );
  }
}
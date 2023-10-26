import 'package:flutter/material.dart';
import 'package:s_Store/utils/constant/colors.dart';
import 'package:s_Store/utils/helpers/helper_function.dart';
class SFormDivider extends StatelessWidget {
  const SFormDivider({
    super.key,
    required this.dividerText
  });
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? SColors.darkGrey : SColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
            child: Divider(
                color: dark ? SColors.darkGrey : SColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
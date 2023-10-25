import 'package:ecmrs_ui_fbase/common/styles/spacing_styles.dart';
import 'package:ecmrs_ui_fbase/utils/constant/image_strings.dart';
import 'package:ecmrs_ui_fbase/utils/constant/sizes.dart';
import 'package:ecmrs_ui_fbase/utils/constant/text_strings.dart';
import 'package:ecmrs_ui_fbase/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: SSpacingStyle.paddingwithAppBarHeight,
        child: Column(
          children: [
            ///logo ,Title,Sub title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image:AssetImage(dark ? SImages.lightApplogo : SImages.darkApplogo),
                ),
                Text(STexts.)
              ],
            )
          ],
        ),
      ),
    );
  }
}

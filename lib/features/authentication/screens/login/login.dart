import 'package:flutter/material.dart';
import 'package:s_Store/utils/constant/text_strings.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constant/image_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

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
                Text(STexts.loginTitle)
              ],
            )
          ],
        ),
      ),
    );
  }
}

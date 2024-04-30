import 'dart:io';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_icon_button.dart';


class SignInButtonList extends StatelessWidget {

  const SignInButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          iconName: "assets/svgs/images/signin/google_icon.svg",
          functionName: (){},
        ),
        const SizedBox(
          width: 15,
        ),
        Platform.isIOS
            ? CustomIconButton(
                iconName: "assets/svgs/images/signin/apple_icon.svg",
                functionName: (){},
              )
            : const SizedBox(),
        Platform.isIOS
            ? const SizedBox(
                width: 15,
              )
            : const SizedBox(),
        CustomIconButton(
          iconName: "assets/svgs/images/signin/facebook_icon.svg",
          functionName: (){},
        )
      ],
    );
  }
}

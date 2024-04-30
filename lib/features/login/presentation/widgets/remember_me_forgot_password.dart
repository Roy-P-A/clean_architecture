import 'package:flutter/material.dart';


class RememberMeAndForgotPassword extends StatelessWidget {

  const RememberMeAndForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Row(
        //   children: [
        //     Checkbox(
        //       activeColor: const Color(0xff858585),
        //       hoverColor: const Color(0xff858585),
        //       focusColor: const Color(0xff858585),
        //       checkColor: Colors.black,
        //       value: controller.isChecked.value,
        //       onChanged: (value) => controller.toggleCheckbox(),
        //     ),
        //     const Text(
        //       "remember me",
        //       style: TextStyle(
        //         fontSize: 12,
        //         color: Color(0xff858585),
        //       ),
        //     )
        //   ],
        // ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Forgot Password ?",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff858585),
            ),
          ),
        )
      ],
    );
  }
}

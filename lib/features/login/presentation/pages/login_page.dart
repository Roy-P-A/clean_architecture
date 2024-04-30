import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/widgets/custom_background.dart';
import '../login_bk/login_bk.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_email_textfield_widget.dart';
import '../widgets/custom_password_textfield_widget.dart';
import '../widgets/remember_me_forgot_password.dart';
import '../widgets/signin_button_list.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Scaffold(
                resizeToAvoidBottomInset: true,
                body: Stack(
                  children: [
                    const CustomBackground(),
                    Container(
                      width: double.infinity,
                      // height: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          reverse: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              SvgPicture.asset(
                                "assets/svgs/images/signin/logo.svg",
                                height: 80,
                                width: 80,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    "Log In",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  // CustomEmailTextFieldWidget(
                                  //   obscureText: false,
                                  //   tController:
                                  //       controller.emailController.value,
                                  //   icon: "assets/svgs/images/signin/email.svg",
                                  //   labelText: "Your mail address",
                                  //   autovalidateMode:
                                  //       controller.validationDisplay
                                  //           ? AutovalidateMode.always
                                  //           : AutovalidateMode.disabled,
                                  //   validator: (value) {
                                  //     return controller.emailValidator(value!);
                                  //   },
                                  // ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  // CustomPasswordTextFieldWidget(
                                  //   obscureText: controller.obsecureText,
                                  //   tController:
                                  //       controller.passwordController.value,
                                  //   icon: "assets/svgs/images/signin/lock.svg",
                                  //   labelText: "Your Password",
                                  //   autovalidateMode:
                                  //       controller.validationDisplay
                                  //           ? AutovalidateMode.always
                                  //           : AutovalidateMode.disabled,
                                  //   validator: (value) {
                                  //     return controller
                                  //         .passwordValidator(value!);
                                  //   },
                                  //   suffixIcon: controller.obsecureText
                                  //       ? GestureDetector(
                                  //           onTap: () =>
                                  //               controller.convertToVisible(),
                                  //           child: Padding(
                                  //             padding: const EdgeInsets.all(12),
                                  //             child: SvgPicture.asset(
                                  //               "assets/svgs/images/signin/not_visible.svg",
                                  //             ),
                                  //           ),
                                  //         )
                                  //       : GestureDetector(
                                  //           onTap: () =>
                                  //               controller.convertToInvisible(),
                                  //           child: Padding(
                                  //             padding:
                                  //                 const EdgeInsets.all(12.0),
                                  //             child: SvgPicture.asset(
                                  //                 "assets/svgs/images/signin/visible_eye.svg"),
                                  //           ),
                                  //         ),
                                  // ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const RememberMeAndForgotPassword(),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  const CustomButton(),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "or continue with",
                                style: TextStyle(
                                    color: Color(0xff858585), fontSize: 15),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const SignInButtonList(),
                              const SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "Sign in as guest",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an account? ",
                                    style: TextStyle(color: Color(0xffA5A5A5)),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text(
                                      "Sign up",
                                      style: TextStyle(
                                        color: Color(0xff744EFD),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).viewInsets.bottom /
                                        10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}

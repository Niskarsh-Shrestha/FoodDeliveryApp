import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/view/forgot_password.dart';
import 'package:food_delivery_app/view/home.dart';
import 'package:food_delivery_app/view/register.dart';
import 'package:food_delivery_app/widgets/AppbarText.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../widgets/PasswordBox.dart';
import '../widgets/LoginButtonWidget.dart';
import '../widgets/loginbox.dart';

import '../widgets/VGapWidget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
//TOP BAR
                Row(
                  children: [
                    const Center(
                      child: AppbarText(text: "LOG IN"),
                    ),
                    const SizedBox(
                      width: 290,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: InkWell(
                          onTap: () {
                            Get.to(() => const HomeView());
                          },
                          child: Text(
                            "SKIP",
                            style: TextStyle(
                                fontSize: 17, color: AppColor.primaryColor),
                          )),
                    ),
                  ],
                ),
               const SizedBox(
                  height: 160,
                ),
//TOP BAR ENDS
                //LOTTIE FILES
                Lottie.network(
                    "https://assets5.lottiefiles.com/private_files/lf30_y0m027fl.json",
                    height: 260,
                    width: 260),
                //LOTTIE FILES ENDS

                const VGapWidget(),

                //BODY SECTION
                const LoginBox(),
                const VGapWidget(),
                const PasswordBox(),
                //BODY SECTION ENDS

                const VGapWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //FORGET PASSWORD
                      InkWell(
                        onTap: (() {
                          Get.to(() => const ForgotPassView());
                        }),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppColor.primaryColor),
                        ),
                      ),
                      //FORGET PASSWORD ENDS
                    ],
                  ),
                ),
                const VGapWidget(),

                //BUTTON BAR
                const LoginButtonWidget(
                  text: 'LOG IN',
                ),
                //BUTTON BAR ENDS

                const VGapWidget(),

                //BUTTOM TEXT
                InkWell(
                  onTap: () {
                    Get.to(
                      () => const RegisterView(),
                    );
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                )
                //BUTTOM TEXT ENDS
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

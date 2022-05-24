import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/view/login.dart';
import 'package:food_delivery_app/widgets/PasswordBox.dart';
import 'package:food_delivery_app/widgets/appbarText.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../widgets/LoginButtonWidget.dart';
import '../widgets/loginbox.dart';
import '../widgets/VGapWidget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
                const AppbarText(text: "Register Now"),

                const SizedBox(
                  height: 160,
                ),
//LOTTIE FILES
                Lottie.network(
                    "https://assets3.lottiefiles.com/packages/lf20_vkqybeu5/data.json",
                    height: 260,
                    width: 260),

//LOTTIE FILES ENDS
                const VGapWidget(),
//BODY SECTION

                const LoginBox(),
                const VGapWidget(),
                const PasswordBox(),
                const VGapWidget(),
//BODY SECTION ENDS
                const VGapWidget(),
//BUTTON BAR

                const LoginButtonWidget(
                  text: 'Create Account',
                ),

//BUTTON BAR ENDS
                const VGapWidget(),
//BUTTOM TEXT

                InkWell(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const LoginView());
                    },
                    child: Text(
                      "Already have an Account!!",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
//BUTTOM TEXT ENDS
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

import 'package:food_delivery_app/widgets/appbarText.dart';
import 'package:food_delivery_app/widgets/loginButtonWidget.dart';
import 'package:food_delivery_app/widgets/Loginbox.dart';

import 'package:food_delivery_app/widgets/VGapWidget.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        titleSpacing: 85,
        title: const AppbarText(text: "Forget Password"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                LoginBox(),
                VGapWidget(),
                LoginButtonWidget(text: "Find your account")
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

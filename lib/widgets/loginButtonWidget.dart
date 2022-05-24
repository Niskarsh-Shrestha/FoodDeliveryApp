import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';
import 'package:food_delivery_app/view/home.dart';
import 'package:get/get.dart';

class LoginButtonWidget extends StatelessWidget {
  final String text;
  const LoginButtonWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              color: AppColor.primaryColor,
              onPressed: () {
                Get.to(() => const HomeView());
              },
              child: Text(
                text,
                style: TextStyle(color: AppColor.secondaryColor2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

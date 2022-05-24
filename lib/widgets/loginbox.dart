import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';

class LoginBox extends StatelessWidget {
  const LoginBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                enabled: true,
                disabledBorder: InputBorder.none,
                fillColor: AppColor.primaryColor2,
                hintStyle:
                    TextStyle(color: AppColor.primaryColor, fontSize: 16.5),
                hintText: "E-mail Address",
                prefixIcon: const Icon(Icons.mail_outline_outlined),
                prefixIconColor: AppColor.primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}

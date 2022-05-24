import 'package:flutter/material.dart';

import '../util/colors.dart';

class PasswordBox extends StatefulWidget {
  const PasswordBox({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordBox> createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: TextFormField(
              obscureText: flag,
              decoration: InputDecoration(
                filled: true,
                enabled: true,
                disabledBorder: InputBorder.none,
                fillColor: AppColor.primaryColor2,
                hintStyle:
                    TextStyle(color: AppColor.primaryColor, fontSize: 16.5),
                hintText: 'Password',
                prefixIcon:const Icon(Icons.lock_outline_sharp),
                suffixIcon: IconButton(
                    onPressed: () {
                      flag = !flag;
                      setState(() {});
                    },
                    icon: flag == true
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
                prefixIconColor: AppColor.primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}

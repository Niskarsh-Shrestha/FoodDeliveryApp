import 'package:flutter/material.dart';

import '../util/colors.dart';

class AppBarText extends StatelessWidget {
  final String text;
  const AppBarText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 19,
          fontWeight: FontWeight.bold),
    );
  }
}

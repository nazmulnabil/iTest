import 'package:flutter/material.dart';
import 'package:itest_app/constants/theme_colors.dart';

class OutlinedCustomButton extends StatelessWidget {
  String? text;

  OutlinedCustomButton({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: BorderSide(color: ThemeColors.baseThemeColor),
          primary: ThemeColors.baseThemeColor,
        ),
        onPressed: (() => print("Accepted")),
        child: Text(
          text!,
          style: TextStyle(color: ThemeColors.baseThemeColor),
        ));
  }
}

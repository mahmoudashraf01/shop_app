import 'package:flutter/material.dart';
import 'package:shoping_strore/shared/themes/colors.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  ActionButton(
      {super.key,
      required this.title,
      required this.action,
      this.buttonColor,
      this.buttonWidth,
      this.buttonHigth,
      this.titleStyle});
  String title;
  Function() action;
  Color? buttonColor;
  double? buttonWidth;
  double? buttonHigth;
  TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHigth,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: action,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(darkBlue2),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          title,
          style: titleStyle,
        ),
      ),
    );
  }
}
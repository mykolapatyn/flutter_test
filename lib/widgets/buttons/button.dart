import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      this.icon,
      required this.textColor,
      required this.borderColor,
      required this.widthSize,
      required this.heightSize,
      this.isIcon = false,
      required this.onTap});

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final IconData? icon;
  final GestureTapCallback onTap;
  double widthSize;
  double heightSize;
  bool? isIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: widthSize,
        height: heightSize,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(color: borderColor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}

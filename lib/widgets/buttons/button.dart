import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key,
    required this.text,
    this.icon,
    this.isIcon = false,
    required this.onTap});

  final String text;
  final IconData? icon;
  final GestureTapCallback onTap;
  bool? isIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black)),
        child: Center(
          child: isIcon == false
              ? Text(
            text,
            style: const TextStyle(color: Colors.black),
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(width: 5),
              Text(
                text,
                style: const TextStyle(color: Colors.black),
              )
            ],
          )
        ),
      ),
    );
  }
}

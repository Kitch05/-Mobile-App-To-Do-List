// ignore_for_file: prefer_const_constructors, must_be_immutable

import "package:flutter/material.dart";

class Button extends StatelessWidget {
  final String title;
  VoidCallback onPressed;

  Button({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.all(5),
      color: Colors.grey[900],
      child: Text(title),
    );
  }
}

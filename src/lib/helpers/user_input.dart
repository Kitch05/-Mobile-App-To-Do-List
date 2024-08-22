// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import "package:flutter/material.dart";
import "package:todo_list/helpers/button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(title: "Save", onPressed: onSave),
                Button(title: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}

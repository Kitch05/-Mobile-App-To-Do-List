// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color.fromARGB(255, 45, 42, 51)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: null,
          ),
          Text(
            "Make a task",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}

void toggle() {}

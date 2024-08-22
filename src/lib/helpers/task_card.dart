// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Task extends StatelessWidget {
  final String task;
  final bool accomplished;
  Function(bool?)? onChanged;
  SlidableActionCallback deleteTask;

  Task(
      {super.key,
      required this.task,
      required this.accomplished,
      required this.onChanged,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        SlidableAction(
          onPressed: deleteTask,
          icon: Icons.delete_outline_rounded,
          backgroundColor: Colors.red.shade300,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
        )
      ]),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color.fromARGB(255, 45, 42, 51)),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Checkbox(
              value: accomplished,
              onChanged: onChanged,
            ),
            Text(
              task,
              style: TextStyle(
                  fontSize: 16,
                  decoration: accomplished
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_list/helpers/task_card.dart';
import 'package:todo_list/helpers/user_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List taskList = [
    ["Practice Flutter", false],
    ["Make Project", false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 3,
          shadowColor: Colors.black,
          title: Center(
              child: Text("To-do List", style: TextStyle(color: Colors.white))),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DialogBox(
                    controller: _controller,
                    onSave: () {
                      setState(() {
                        taskList.add([_controller.text, false]);
                        _controller.clear();
                        Navigator.of(context).pop();
                      });
                    },
                    onCancel: () => Navigator.of(context).pop(),
                  );
                },
              );
            },
            child: Icon(Icons.add)),
        body: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            return Task(
              task: taskList[index][0],
              accomplished: taskList[index][1],
              deleteTask: (context) {
                setState(() {
                  taskList.removeAt(index);
                });
              },
              onChanged: (p0) {
                setState(() {
                  taskList[index][1] = !taskList[index][1];
                });
              },
            );
          },
        ));
  }
}

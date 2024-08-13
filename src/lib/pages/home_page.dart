// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/helpers/task_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView(
        children: [Task()],
      ),
    );
  }
}

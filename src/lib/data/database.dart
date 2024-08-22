import 'package:hive/hive.dart';

class TaskDB {
  List taskList = [];

  final _box = Hive.box('myBox');

  //First time ever opening the application
  void createTask() {
    taskList = [
      ["Make a new task", false]
    ];
  }

  void loadData() {
    taskList = _box.get("TASKLIST");
  }

  void updateData() {
    _box.put("TASKLIST", taskList);
  }
}

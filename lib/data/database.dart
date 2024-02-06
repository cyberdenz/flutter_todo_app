import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('myBox');

  // run this method fi this is the 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Fill ToDo List", false],
      ["Lear ToDo App", false],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
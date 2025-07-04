import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('myBox');

  //eun this method if this is the 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }

  //load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}
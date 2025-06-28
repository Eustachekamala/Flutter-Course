import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/utils/dialog_box.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() =>  _HomePageState();
}

class _HomePageState extends State<HomePage>{
  //reference the hive box
  final _myBox = Hive.box('myBox');
  ToDoDataBase dataBase = ToDoDataBase();

  @override
  void initState() {
    //if this is the 1st time ever opening the app, then create default data
    if(_myBox.get("TODOLIST") == null){
      dataBase.createInitialData();
    }else{
      //there already exists data
      dataBase.loadData();
    }
    super.initState();
  }

  //text controller
  final _controller = TextEditingController();


  //check was tapped
  void checkBoxChanged(bool? value, int index){
    setState(() {
      dataBase.toDoList[index][1] = !dataBase.toDoList[index][1];
    });
    dataBase.updateDataBase();
  }

  //save new task
  void saveNewTask(){
    setState(() {
      dataBase.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    dataBase.updateDataBase();
  }

  //create new task
  void createNewTask(){
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSaved: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        }
    );
  }

  //delete task
  void deleteTask(int index){
    setState(() {
      dataBase.toDoList.removeAt(index);
    });
    dataBase.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Center(
          child: Text(
            'TO DO',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.black45,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          backgroundColor: Colors.yellow[600],
          child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: dataBase.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                taskName: dataBase.toDoList[index][0],
                taskCompleted: dataBase.toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
                deleteFunction: (context) => deleteTask,
            );
          }
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget{
  const ToDoPage({super.key});

  @override
  State<StatefulWidget> createState() => _ToDoPageState();
}

class _ToDoPageState  extends State<ToDoPage>{
  // text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  // greeting message variable
  String greetingMessage = "";

  //greet user method
  void greetUser(){
    setState(() {
      greetingMessage = "Hello, ${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat app',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greet user message
              Text(greetingMessage),

              // text field
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name...",
                  label: Text("Name")
                ),
              ),

              //button
              ElevatedButton(
                  onPressed: greetUser,
                  child: Text("Tap"))
            ],
          ),
        )
      ),
    );
  }
}
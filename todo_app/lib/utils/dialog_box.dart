import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget{
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;

  DialogBox(
      {
        super.key,
        required this.controller,
        required this.onSaved,
        required this.onCancel
      });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Task'),
                  hintText: "Add a new task"
              ),
            ),
            //btn -> save + cancel

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save
                MyButton(text: 'Save', onPressed: onSaved),

                const SizedBox(width: 8,),

                //cancel
                MyButton(text: 'Cancel', onPressed: onCancel)
              ],
            )
          ],
        )

      ),
    );
  }
}
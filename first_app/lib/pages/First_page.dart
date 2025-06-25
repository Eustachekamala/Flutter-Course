import 'package:flutter/material.dart';
import 'SecondPage.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to second page
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text("Go To Second page"),
        ),
      ),
    );
  }
}
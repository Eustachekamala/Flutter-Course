import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'FlowUX',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Welcome Home',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      backgroundColor: Colors.black,
    ),
  ));
}
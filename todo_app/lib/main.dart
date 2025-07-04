import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_app/pages/home_page.dart';

void main() async{
  //init the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('myBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.black45),),
    );
  }
}
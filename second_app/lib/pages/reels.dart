import 'package:flutter/material.dart';

class Reels extends StatefulWidget{
  const Reels({super.key});

  @override
  State<StatefulWidget> createState() => ReelsState();
}

class ReelsState extends State<Reels>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels'),
        centerTitle: true,
      ),
    );
  }
}
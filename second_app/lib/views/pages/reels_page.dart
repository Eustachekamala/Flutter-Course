import 'package:flutter/material.dart';

class ReelsPage extends StatefulWidget{
  const ReelsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'Reels Page'
        ),
      ),
    );
  }
}
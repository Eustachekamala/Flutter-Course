import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Text(
                'Settings Page'
            ),
          ),
        )
    );
  }
}
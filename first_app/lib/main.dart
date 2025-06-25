import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/landing_page.dart';
import 'package:first_app/pages/setting_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        '/landingpage': (context) => LandingPage(),
        '/homepage' : (context) => HomePage(),
        '/settingspage': (context) => SettingPage()
      },
    );
  }
}
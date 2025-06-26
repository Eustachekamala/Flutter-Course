import 'package:flutter/material.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/pages/profile.dart';
import 'package:navigation/pages/settings.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //This keeps track pf current page to display
  int _selectedIndex = 0;

  //this method updates the new selected index
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //the pages we have in our app
  final List _pages = [
    //homePage
    Home(),

    //profilePage
    Profile(),

    //settingsPage
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlowUX')
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            items: [
          //Home
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),

          //Profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),

          //Settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ]),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:second_app/pages/home.dart';
import 'package:second_app/pages/profile.dart';
import 'package:second_app/pages/reels.dart';
import 'package:second_app/pages/search.dart';

void main(){
  runApp(FlowUX());
}

class FlowUX extends StatefulWidget{
  const FlowUX({super.key});

  @override
  State<FlowUX> createState() => _FlowUXState();
}

int _selectedIndex = 0;

//List of widgets to display based on the selected index
const List<Widget> _widgetsOptions = <Widget>[
  Home(),
  Search(),
  Reels(),
  Profile(),
];

class _FlowUXState extends State<FlowUX> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        body: Center(
          child: _widgetsOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search'),
          NavigationDestination(
              icon: Icon(Icons.play_circle_fill),
              label: 'Reels'),
          NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings'),
        ],
          onDestinationSelected: (int value){
            setState(() {
              _selectedIndex = value;
            });
          },
          selectedIndex: _selectedIndex,
        ),
      ),
    );
  }
}
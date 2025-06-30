import 'package:flutter/material.dart';
import 'package:second_app/data/notifiers.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return ValueListenableBuilder(
         valueListenable: selectedPageNotifier,
         builder: (context, selectedPage, child) {
           return NavigationBar(destinations: [
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
               selectedPageNotifier.value = value;
             },
             selectedIndex: selectedPage,
           );
         },
     );
  }
}
import 'package:flutter/material.dart';
import 'package:second_app/data/notifiers.dart';
import 'package:second_app/views/pages/home_page.dart';
import 'package:second_app/views/pages/profile_page.dart';
import 'package:second_app/views/pages/reels_page.dart';
import 'package:second_app/views/pages/search_page.dart';
import 'package:second_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  SearchPage(),
  ReelsPage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget{
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlowUX"),
        actions: [
          IconButton(
              onPressed: (){
                isDarkModeNotifier.value = !isDarkModeNotifier.value;
              },
              icon: ValueListenableBuilder(
                  valueListenable: isDarkModeNotifier,
                  builder: (context, isDarkMode, child){
                    return
                      isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode);
                  }
              )
          )
        ],
        centerTitle: false,
      ),
        body: ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, child) {
              return pages[selectedPage];
            },
        ),
        bottomNavigationBar: NavBarWidget()
    );
  }
}
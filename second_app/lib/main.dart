import 'package:flutter/material.dart';
import 'package:second_app/data/notifiers.dart';
import 'package:second_app/views/widget_tree.dart';

void main(){
  runApp(FlowUX());
}

class FlowUX extends StatefulWidget{
  const FlowUX({super.key});

  @override
  State<FlowUX> createState() => _FlowUXState();
}

class _FlowUXState extends State<FlowUX> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDarkMode, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.teal,
                  brightness: isDarkMode ? Brightness.dark : Brightness.light,
                ),
              ),
              home: WidgetTree()
          );
        },
    );
  }
}
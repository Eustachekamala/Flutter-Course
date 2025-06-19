import 'package:flutter/material.dart';

void main() {
  runApp( const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AppBarExample(),);
  }

}

class AppBarExample extends StatelessWidget{
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FluxUI'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
            },
          )
        ],
      ),
    );
  }
}


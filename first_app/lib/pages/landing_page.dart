import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Text('FlowUx')
            ),
            // Home Page list title
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);

                //Go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            //Setting page list
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Go to Setting Page
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        )
      ),
    );
  }
}
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
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Demo Home Page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                    color: Colors.white
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.deepPurple,
          autofocus: WidgetsApp.showPerformanceOverlayOverride,
          child: Icon(Icons.add, size: 20, color: Colors.white,),
        ),
        body: Stack(
          children: [
            Image.asset(
                'assets/images/bg.jpg',
                fit: BoxFit.cover,
                height: 300,
            ),
            SizedBox(
              height: 300,
              child: Center(
                child: Text(
                  'Flutter',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30),),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          //home button
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 26, color:
              Colors.deepPurple,),
              label: 'Home'),

          //about
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                size: 26, color: Colors.deepPurple,),
              label: 'About'),

          //Profile
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 26,
                color: Colors.deepPurple,),
              label: 'Profile'),

          //settings
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 26,
                color: Colors.deepPurple,),
              label: 'Settings'),
        ]),
      ),
    );
  }
}
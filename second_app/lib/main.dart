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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal,
            brightness: Brightness.dark
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          centerTitle: false,
          leading: Padding(
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/bg.jpg',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.message, size: 24, color: Colors.white,),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite, size: 24, color: Colors.white,),
            ),
          ],
          backgroundColor: Colors.teal,
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.teal,
          child: Icon(Icons.add, color: Colors.white,),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 30, color: Colors.white,),
                  label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30, color: Colors.white,),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_circle, size: 30, color: Colors.white,),
                label: 'Reels',
              ),
              BottomNavigationBarItem(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image.asset(
                    'assets/images/Jared.jpeg',
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                label: 'Profile',
              )
            ]),
      ),
    );
  }
}
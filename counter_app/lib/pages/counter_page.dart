import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>{
  //variable
  int _counter = 0;

  //method
  void _incrementCounter(){
    //setState rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    //setState rebuilds the widget
    setState(() {
      if(_counter == 0) return;
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //message
            Text("You pushed the button this many times: "),

            //counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),

            //button increment
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
              )),

            //button decrement
            ElevatedButton(
                onPressed: _decrementCounter,
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      )
    );
  }
}
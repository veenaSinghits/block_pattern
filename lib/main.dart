import 'package:block_pattern/app3(Rxdart)/counterScreen_Rxdart.dart';
import 'package:flutter/material.dart';
import 'package:block_pattern/app1(setState)/counterScreen.dart';

import 'app2(stremContoller)/counterScreen_StremController.dart';
import 'app4(library)/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Block pattern Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: sample(),
    );
  }
}

class sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Block pattern demo"),
    ),
    body:Center(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => counterScreen()));},
            child: Text("using setstate")),
        ElevatedButton(onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => counterScreen_StreamController()));},
            child: Text("using blockpattern(streamcontroller)")),
        ElevatedButton(onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => counterScreen_Rxdart()));},
            child: Text("using blockpattern(Rxdart)")),
        ElevatedButton(onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => counter_screen()));},
            child: Text("using bolck library"))
      ],
    ) ,)

    );
  }

}
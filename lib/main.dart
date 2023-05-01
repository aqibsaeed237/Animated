import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foo_animation/detailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,11,12
  ];
@override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: ListWheelScrollView(
              itemExtent: 100,
              children: arrIndex.map((value) => Container(
                child: Text('$value', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),)
                ,width: double.infinity,
              decoration: BoxDecoration( color: Colors.blueGrey, borderRadius: BorderRadius.circular(16)
              ),
             )).toList(),


            ),
          ),
        )
    );
  }
}

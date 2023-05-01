import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
@override
  // void initState() {
  //   // Timer(Duration(seconds :4),(){
  //   //   reload();
  //   //
  //   // });
  //
  // }
  void reload(){
    setState(() {
      if(isFirst) {
        isFirst = false;
      }else{
        isFirst = true;

      }
    });
  }

  bool isFirst= true;

  Decoration myDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(2)
  );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(seconds: 4),
                firstChild: Container(
                  width: 200,
                    height: 200,
                  color: Colors.grey.shade400,

                ),
                secondChild: Image.asset('assets/images/logo.png',
                  width: 200,
                  height: 200,),
                sizeCurve: Curves.fastOutSlowIn,
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.bounceInOut,
                crossFadeState: isFirst? CrossFadeState.showFirst: CrossFadeState.showSecond,
              ),
              OutlinedButton(onPressed: (){
                reload();
              }, child: Text('Show'))
            ],
          ),
        )
    );
  }
}

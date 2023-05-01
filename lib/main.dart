import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  var myOpacity = 1.0;
  bool isVisible = true;

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
            AnimatedOpacity(opacity: myOpacity,curve: Curves.elasticOut, duration: Duration(seconds: 1),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blueGrey,
            ),),
            OutlinedButton(onPressed: (){

              setState(() {
                if(isVisible) {
                  myOpacity = 0.0;
                  isVisible = true;
                }else{
                  myOpacity = 1.0;
                  isVisible = false;
                }
              });
            }, child: Text('Close'))
          ],
        ),
      )
    );

  }
}

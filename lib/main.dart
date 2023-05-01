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

  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

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
              AnimatedContainer(duration: Duration(seconds: 2),
                width: _width,
                height: _height,
                curve: Curves.slowMiddle,
                decoration: myDecoration,
              ),
              OutlinedButton(onPressed: (){

                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(21), color: Colors.orange
                    );

                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    myDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(21), color: Colors.grey
                    );

                    flag = true;
                  }
                });

              }, child: Text('Animate')),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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
      home: const MyHomePage(title: 'Mapping List'),
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
  var arrData = [
    {
      'name': 'Aqib Saeed',
      'mob': '03116124245',
      'unread': '2'

    },
    {
      'name': 'Ahmed',
      'mob': '03086040509',
      'unread': '1',

    },
    {
      'name': 'Taimoor',
      'mob': '03036323121',
      'unread': '5'

    },
    {
      'name': 'Ali',
      'mob': '03092124620',
      'unread': '4'

    },
    {
      'name': 'Zia',
      'mob': '03105124259',
      'unread': '8'

    },
    {
      'name': 'Naveed',
      'mob': '03212443333',
      'unread': '2'

    },
    {
      'name': 'Hamza',
      'mob': '03112123222',
      'unread' : '1'

    },
    {
      'name': 'Kashif',
      'mob': '03101212122',
      'unread': '0'

    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
                children: arrData.map((value) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['mob'].toString()),
                      trailing: CircleAvatar(
                        radius: 12,
                          backgroundColor: Colors.grey,
                          child: Text(value['unread'].toString())),

                    ),
              )
                ).toList()
            ),
          ),

        )
    );
  }

}

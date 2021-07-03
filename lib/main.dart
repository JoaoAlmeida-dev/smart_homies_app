import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smart_homies_app/menu_item.dart';
import 'package:smart_homies_app/scroll_view.dart';
import 'package:smart_homies_app/second_page.dart';

import 'my_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MenuItem> menuItems = [
    const MenuItem(itemName: 'Weather', itemIcon: Icons.cloud_circle),
    const MenuItem(itemName: 'Map', itemIcon: Icons.map),
    const MenuItem(itemName: 'Alarm', itemIcon: Icons.access_alarm),
  ];

  @override
  Widget build(BuildContext context) {
    Radius ra = Radius.circular(12);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        appBar: AppBar(),
      ),
      body: Stack(
        children: [
          /*Image.asset(
            'images/farmer.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),*/

          CustomDraggableScrollView(menuitems: menuItems, ra: ra),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              heightFactor: 4,
              child: Text(
                'Hoje poupou 15 litros de água',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




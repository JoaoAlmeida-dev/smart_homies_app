import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smart_homies_app/Objects/menu_item.dart';
import 'package:smart_homies_app/Screens/map_page.dart';

import 'Widgets/my_app_bar.dart';
import 'Widgets/my_bottom_bar.dart';
import 'Widgets/my_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartHomies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'SmartHomies HomePage'),
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
    double ra = 12.0;
    return MyScaffold(
        body: Stack(
          children: [
            Image.asset(
              'images/farmer.jpg',
              fit: BoxFit.fitHeight,
              height: double.infinity,
            ),
            TextPannel(
              ra: ra,
              topAlignment: 100,
              leftAlignment: 25,
              text: 'Hoje popou 16 litros de água',
            ),
          ],
        ));
  }
}

class TextPannel extends StatelessWidget {
  const TextPannel({
    Key? key,
    required this.ra,
    required this.topAlignment,
    required this.leftAlignment,
    required this.text,
  }) : super(key: key);

  final double ra;
  final double topAlignment;
  final double leftAlignment;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.8),
          border: Border.all(
            color: Colors.black26,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(ra),
          gradient:
              LinearGradient(colors: <Color>[Colors.blue, Colors.blueAccent]),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

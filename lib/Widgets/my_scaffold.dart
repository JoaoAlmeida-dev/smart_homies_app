import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_homies_app/Screens/map_page.dart';
import 'package:smart_homies_app/Screens/second_page.dart';
import 'package:smart_homies_app/Screens/sensors_page.dart';
import 'package:smart_homies_app/main.dart';

import 'my_app_bar.dart';
import 'my_bottom_bar.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        appBar: AppBar(),
      ),
      bottomNavigationBar: MyBottomAppBar(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: body,
      /*Stack(
        children: [
          Image.asset(
            'images/farmer.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          //CustomDraggableScrollView(menuitems: menuItems, ra: ra),
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
      ),*/
    );
  }
}

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: const Icon(Icons.map),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MapPage()),
                );
              }),
          IconButton(
              icon: const Icon(Icons.alarm),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SensorsPage()),
                );
              }),
        ],
      ),
    );
  }
}

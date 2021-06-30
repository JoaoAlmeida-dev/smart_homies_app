import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_homies_app/menu_item.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
    const MenuItem(itemName: 'Item2', itemIcon: Icons.map),
    const MenuItem(itemName: 'Item3', itemIcon: Icons.access_alarm),
    const MenuItem(itemName: 'Weather', itemIcon: Icons.cloud_circle),
    const MenuItem(itemName: 'Item3', itemIcon: Icons.access_alarm),
    const MenuItem(itemName: 'Item3', itemIcon: Icons.access_alarm),
    const MenuItem(itemName: 'Item2', itemIcon: Icons.map),
    const MenuItem(itemName: 'Item3', itemIcon: Icons.access_alarm),
    const MenuItem(itemName: 'Item2', itemIcon: Icons.map),
    const MenuItem(itemName: 'Item3', itemIcon: Icons.access_alarm),
    const MenuItem(itemName: 'Weather', itemIcon: Icons.cloud_circle),
    const MenuItem(itemName: 'Item3', itemIcon: Icons.access_alarm),
  ];

  @override
  Widget build(BuildContext context) {
    Radius ra = Radius.circular(12);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/farmer.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SizedBox.expand(
              child: CustomScrollViewContent(menuitems: menuItems, ra: ra)),
        ],
      ),
    );
  }
}

class CustomScrollViewContent extends StatelessWidget {
  const CustomScrollViewContent(
      {Key? key, required this.menuitems, required this.ra})
      : super(key: key);

  final List<MenuItem> menuitems;
  final Radius ra;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.05,
      maxChildSize: 0.1,
      minChildSize: 0.005,
      builder: (context, ScrollController scrollcontroller) => Container(
        decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.only(
              topRight: ra,
              topLeft: ra,
            )),
        child: ListView.builder(
          //gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // crossAxisCount: 3,
          //),
          controller: scrollcontroller,
          itemCount: menuitems.length,
          itemBuilder: (BuildContext context, int index) {
            return buildItem(menuitems, index);
          },
        ),
      ),
    );
  }

  Widget buildItem(List<MenuItem> menuitems, int index) => Container(
        child: Column(children: [
          Icon(
            menuitems[index].itemIcon,
            size: 100,
          ),
          Text(menuitems[index].itemName),
        ]),
      );
}

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Radius ra = Radius.circular(12);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'farmer.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox.expand(
          child:DraggableScrollableSheet(
            expand: true,
            initialChildSize: 0.15,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (context, controller) =>
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: ra, topRight: ra),
                  child: Container(
                      color: Colors.blue,
                      child: GridView.count(crossAxisCount: 3,
                        children: buildItems(menuItems),
                      ),
                  ),
                ),
          ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildItems(List<MenuItem> menuitems) {
    List<Widget> containers=List.generate(
        menuitems.length,
            (i)=> Container(
              child: Column(
                children:[
                  Icon(menuitems[i].itemIcon,size: 100,),
                  Text(menuitems[i].itemName),

                ]
              ),
            ),
    );

    return containers;
  }
}

class BottomMenu extends Widget {
  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}

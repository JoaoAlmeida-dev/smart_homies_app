import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_homies_app/Screens/second_page.dart';

import '../Objects/menu_item.dart';

class CustomDraggableScrollView extends StatelessWidget {
  const CustomDraggableScrollView(
      {Key? key, required this.menuitems, required this.ra})
      : super(key: key);

  final List<MenuItem> menuitems;
  final Radius ra;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.2,
        maxChildSize: 0.75,
        builder: (context, ScrollController scrollcontroller) => Container(
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.only(
              topRight: ra,
              topLeft: ra,
            ),
          ),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            controller: scrollcontroller,
            itemCount: menuitems.length,
            itemBuilder: (BuildContext context, int index) {
              return buildItem(context, menuitems, index);
            },
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, List<MenuItem> menuitems, int index) =>
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
        icon: Icon(
          menuitems[index].itemIcon,
          size: 100,
        ),
        tooltip: (menuitems[index].itemName),
      );
}

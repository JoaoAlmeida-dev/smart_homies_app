import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_homies_app/Widgets/my_scaffold.dart';

import '../main.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  static const CameraPosition initialPosition =
  CameraPosition(
    target: LatLng(200, 200),
    zoom: 15,
  );
  
  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      body: Center(
        child:
        GoogleMap(
          mapType: MapType.hybrid,
            initialCameraPosition: initialPosition,

        ),
      ),
    );
  }
}

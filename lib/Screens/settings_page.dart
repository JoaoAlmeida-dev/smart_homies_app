import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_homies_app/Widgets/my_scaffold.dart';

import '../main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      body: Center(
          child: Text('SettingsPage'),
      ),
    );
  }
}

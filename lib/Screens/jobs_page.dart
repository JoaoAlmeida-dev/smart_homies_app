import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_homies_app/Widgets/my_scaffold.dart';

import '../main.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Center(
          child: Text('JobsPage'),
      ),
    );
  }
}

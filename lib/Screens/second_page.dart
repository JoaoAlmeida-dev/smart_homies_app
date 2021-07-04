import 'package:flutter/cupertino.dart';
import 'package:smart_homies_app/Widgets/my_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
    body: Center(
    child: Text('SecondPage'),
    ),
    );
  }
}

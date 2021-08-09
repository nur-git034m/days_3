import 'package:days_3/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('People'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
  );
}
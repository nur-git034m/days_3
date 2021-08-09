import 'package:flutter/material.dart';

class PluginPage extends StatelessWidget {
  const PluginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      title: Text('Plugin page'),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
  );
}
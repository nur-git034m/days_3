import 'package:days_3/page/auth_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Work_page extends StatefulWidget {
  Work_page({Key? key}) : super(key: key);

  @override
  _Work_pageState createState() => _Work_pageState();
}

// ignore: camel_case_types
class _Work_pageState extends State<Work_page> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WTF'),
      ),
      body: new Container(
        child: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 25),
              buildSearchField(),
              const SizedBox(height: 15),
              _buildCard(),
              const SizedBox(height: 15),
              _buildCard(),
              const SizedBox(height: 15),
              _buildCard(),
              const SizedBox(height: 15),
              _buildCard(),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Work_page(),
      );
}

Widget buildSearchField() {
  final color = Colors.black;
  return TextField(
    style: TextStyle(color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      hintText: 'Search',
      hintStyle: TextStyle(color: color),
      prefixIcon: Icon(Icons.search, color: color),
      filled: true,
      fillColor: Colors.white12,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      ),
    ),
  );
}

Widget _buildCard() {
  return SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Kates Kitchen ',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('London United Kingdom'),
            leading: const Icon(
              Icons.smartphone,
              size: 80,
            ),
          ),
          _stars(),
        ],
      ),
    ),
  );
}

Widget _stars() {
  final color = Colors.blue;
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: color),
      Icon(Icons.star, color: color),
      Icon(Icons.star, color: color),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _loremIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            key: UniqueKey(),
            title: Text(
              _loremIpsum,
              style: TextStyle(
                fontWeight: FontWeight.values[index % 9],
                fontSize: (8 + random.nextInt(12)).toDouble(),
              ),
            ),
            subtitle: Text(
              _loremIpsum,
              style: TextStyle(
                fontWeight: FontWeight.values[random.nextInt(9)],
                fontSize: (8 + random.nextInt(12)).toDouble(),
              ),
            ),
          );
        },
        itemCount: 1000,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Refresh',
        child: const Icon(Icons.refresh),
        onPressed: () => setState(() {}),
      ),
    );
  }
}

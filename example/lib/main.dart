import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_navigationbardivider/flutter_navigationbardivider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _navigationBarDividerColor;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    Color navigationBarDividerColor;
    try {
      navigationBarDividerColor = await FlutterNavigationBarDivider.navigationBarDividerColor;
    } on PlatformException {
      navigationBarDividerColor = null;
    }

    if (!mounted) return;

    setState(() {
      _navigationBarDividerColor = navigationBarDividerColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_navigationBarDividerColor\n'),
        ),
      ),
    );
  }
}

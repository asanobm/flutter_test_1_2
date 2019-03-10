import 'package:flutter/material.dart';
import 'package:flutter_test_1_2/pages/draws.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DrawWidget(),
    );
  }
}

class _App extends StatefulWidget {
  @override
  AppState createState() => new AppState();
}

class AppState extends State<_App> {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}

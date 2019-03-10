import 'package:flutter/material.dart';

class DrawTile extends StatelessWidget {
  final String name;
  DrawTile({this.name});
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(this.name));
  }
}

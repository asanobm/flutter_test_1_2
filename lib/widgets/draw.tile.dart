import 'package:flutter/material.dart';

class DrawTile extends StatelessWidget {
  final String name;
  final Function() onTap;
  DrawTile({this.name, this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.name),
      onTap: this.onTap(),
    );
  }
}

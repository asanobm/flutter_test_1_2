import 'package:flutter/material.dart';

class DemoDraw extends StatefulWidget {
  final Text title;
  final List<Widget> tiles;

  DemoDraw({this.title, this.tiles}) : super();

  @override
  _DemoDrawState createState() => new _DemoDrawState();
}

class _DemoDrawState extends State<DemoDraw> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: widget.tiles,
      ),
    );
  }
}

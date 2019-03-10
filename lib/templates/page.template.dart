import 'package:flutter/material.dart';
import 'package:flutter_test_1_2/pages/draws.dart';
import 'package:flutter_test_1_2/widgets/draws.dart';

class PageTemplate extends StatefulWidget {
  final String title;
  PageTemplate({this.title}) : super();

  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<PageTemplate> {
  final List<Widget> subPages = [
    DrawerHeader(
      child: Text('Draws'),
      decoration: BoxDecoration(color: Colors.blueGrey),
    ),
    ListTile(
        title: Text('test'),
        onTap: () => () {
              /// TODO: change current view
            })
  ];

  /// current page
  Widget page;

  /// initState
  @override
  void initState() {
    super.initState();
    this.setState(() {
      this.page = DrawWidget();
    });
  }

  void changePage() {
    this.setState(() {
      this.page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DemoDraw(
          title: Text(widget.title),
          tiles: this.subPages,
        ),
        appBar: AppBar(title: Text(widget.title)),
        body: this.page);
  }
}

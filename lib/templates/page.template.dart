import 'package:flutter/material.dart';
import 'package:flutter_test_1_2/pages/draws.dart';
import 'package:flutter_test_1_2/pages/google.maps.dart';
import 'package:flutter_test_1_2/widgets/draws.dart';

class PageTemplate extends StatefulWidget {
  final String title;
  PageTemplate({this.title}) : super();

  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<PageTemplate> {
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
          tiles: <Widget>[
            DrawerHeader(
              child: Text('Draw menu'),
            ),
            ListTile(
              title: Text('Hello'),
              onTap: () {
                this.setState(() {
                  Navigator.pop(context);
                  this.page = DrawWidget();
                });
              },
            ),
            ListTile(
              title: Text('Test'),
              onTap: () {
                this.setState(() {
                  Navigator.pop(context);
                  this.page = TestWidget();
                });
              },
            ),
            ListTile(
              title: Text('Google Mpas'),
              onTap: () {
                this.setState(() {
                  Navigator.pop(context);
                  this.page = ExampleMaps();
                });
              },
            )
          ],
        ),
        appBar: AppBar(title: Text(widget.title)),
        body: this.page);
  }
}

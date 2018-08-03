import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final String valueFromHome;
  NextPage({Key key, this.valueFromHome}) : super (key: key);

  @override
  _NextPageState createState() => new _NextPageState();

}

class _NextPageState extends State<NextPage> {
  final String titleString = "Next Page";
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(title: new Text("Test"),),
      body: new Text("${widget.valueFromHome}"),
    );
  }
}


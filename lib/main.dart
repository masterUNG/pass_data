import 'package:flutter/material.dart';
import 'nextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final String titleString = "Home Page";
  var textEditController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        new ListTile(title: new TextField(
          controller: textEditController,
        ),
        ),
        new ListTile(title: new RaisedButton(
            child: new Text("Pass to Next Page"),
            onPressed: (){
              var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => NextPage(
                    valueFromHome: textEditController.text,
                  ),
              );
              Navigator.of(context).push(homeRounte);
            }
            ),
        )
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(titleString),
      ),
      body: widget,
    );
  }
}

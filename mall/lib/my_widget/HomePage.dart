import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _HomePage();
    }
}

class _HomePage extends State{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: AppBar(
          title: Text("首页")
        ),
      );
    }
}

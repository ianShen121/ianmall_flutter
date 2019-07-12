import 'package:flutter/material.dart';

class MePage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _MePage();
    }
}

class _MePage extends State{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: AppBar(
          title: Text("我的")
        ),
      );
    }
}

import 'package:flutter/material.dart';

class ShopcartPage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _ShopcartPage();
    }
}

class _ShopcartPage extends State{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        appBar: AppBar(
          title: Text("购物车")
        ),
      );
    }
}

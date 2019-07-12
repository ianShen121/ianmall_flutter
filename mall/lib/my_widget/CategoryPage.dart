import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _CategoryPage();
    }
}

class _CategoryPage extends State{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        
        appBar: AppBar(
          title: Text("分类")
        ),
        
        body: Center(
          
          child: Column(
            children: <Widget>[
              Text("1"),
              Text("1"),
              Text("1"),
              Text("1"),
              Text("1"),
              Text("1"),

            ],
          ),
        )
      );
    }
}

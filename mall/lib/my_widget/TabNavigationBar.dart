import 'package:flutter/material.dart';
import 'CategoryPage.dart';
import 'HomePage.dart';
import 'ShopcartPage.dart';
import 'MePage.dart';



class TabNavigationBar extends StatefulWidget{
  const TabNavigationBar() : super();
  @override
  State<StatefulWidget> createState()=>_TabNavigationbar();
}

class _TabNavigationbar extends State{
  int _currentIndex = 1;
  List<Widget> pages = List<Widget>();


  @override
    void initState() {
      
      super.initState();
      pages
      ..add(HomePage())
      ..add(CategoryPage())
      ..add(ShopcartPage())
      ..add(MePage());
    }

  void _onItemTapped(int index){
    if (mounted){
      setState(() {
              _currentIndex = index;
            });
    }
  }

  
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 24.0,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      fixedColor: Colors.deepPurple,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text("首页"),icon: Icon(Icons.home)
        ),
            BottomNavigationBarItem(
          title: Text("分类"),icon: Icon(Icons.category)
        ),
            BottomNavigationBarItem(
          title: Text("购物车"),icon: Icon(Icons.shopping_cart)
        ),
            BottomNavigationBarItem(
          title: Text("我的"),icon: Icon(Icons.portrait)
        )
      ]),
      body: pages[_currentIndex],
    );
    
  }
}
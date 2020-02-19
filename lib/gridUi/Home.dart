import 'package:flutter/material.dart';
import 'gridone.dart'as gridone;
import 'gridtwo.dart'as gridtwo;

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
  }

  class HomeState extends State<Home>with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 1,vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid View"
        ),
        backgroundColor: Colors.transparent,
        bottom: TabBar(
          controller: controller,
          indicatorWeight: 5.0,
          indicatorColor: Colors.brown,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.face),),
//            Tab(icon: Icon(Icons.image),),
          ],
        )

        ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new gridtwo.GridTwo(),
        ],
      ),
      );
  }
}
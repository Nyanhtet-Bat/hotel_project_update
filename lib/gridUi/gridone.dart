import 'package:flutter/material.dart';

class GridOne extends StatefulWidget {
  @override
  _GridOneState createState() => _GridOneState();
}

class _GridOneState extends State<GridOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(51, (index){

          return Card(
            elevation: 10.0,
            margin: EdgeInsets.all(7.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Container(
              
            child: Align(
              alignment: Alignment.center,
              child: Text("$index",
              style: TextStyle(
                fontSize: 24.0
              ),),
            ),
          )
          );
        })
      ),
    );
  }
}


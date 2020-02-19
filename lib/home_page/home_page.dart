import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_trip_app/gridUi/Home.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/one.jpg"), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.3,
                0.9
              ], colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                RaisedButton(
                  splashColor: Colors.white,
                  color: Colors.white,

                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            Home()
                    ));

                  },

                  child: Text(
                    "Start your journey",
                    style: TextStyle(fontSize: 16.0, color: Colors.black),

                  ),
                )
              ],
            ),),
        ));
  }
}


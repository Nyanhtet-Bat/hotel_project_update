import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_trip_app/gridUi/Home.dart';

class animation_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/3722888/pexels-photo-3722888.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedIcon(
                icon: AnimatedIcons.pause_play,
                progress: _iconAnimationController,
                size: _iconAnimation.value * 100,
                color: Colors.tealAccent,
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                    ),
                    MaterialButton(
                      minWidth: 500.0,
                      height: 500.0,
                      color: Colors.transparent,
                      textColor: Colors.white,

                      child: Text("Enter here",style: TextStyle(fontSize: 20.0),),
                      onPressed: () => {
                                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()))
                      },
                      splashColor: Colors.redAccent,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

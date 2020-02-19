import 'package:flutter/material.dart';

class Final_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Successful_Page();
  }
}

class Successful_Page extends StatefulWidget {
  @override
  _Successful_PageState createState() => _Successful_PageState();
}

class _Successful_PageState extends State<Successful_Page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
//          Text("", style: TextStyle(fontSize: 20, color: Colors.white),),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Go Back to Main Menu',
                  style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}

//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_trip_app/booking_calendar/date_range_picker.dart';
import 'package:project_trip_app/model/hotel_model.dart';

//import '../booking_calendar/hotel_booking.dart';

class HotelDetail extends StatefulWidget {
  static final String path = "lib/src/pages/hotel/detail.dart";

  @override
  _HotelDetailState createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  final String image = "images/four.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
              Image.asset(image, fit: BoxFit.cover),
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Lux Hotel\nToronto",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Text(
                            "8.4/85 reviews",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(16.0),
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("\$ 200"),
                                    Text("/per night")
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 20.0),
                            FittedBox(
                              fit: BoxFit.fitWidth,
                              child: RaisedButton(
                                color: Colors.purple,
                                textColor: Colors.white,
                                child: Text("Book Now"),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 32.0),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>
                                          HotelDateView(hotel: Hotel("", null, null,null,""),)
                                  ));

                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text("Description".toUpperCase(),style: TextStyle(color: Colors.white)),
                            Text("askldjflkjasdkfja lsdjfoajsdlkfja"
                                "asdgjfasdkjflkjasdlkjflkasdjfas"
                                "adsfjhklasdjflkjasd;lkjfasas"
                                "ksadjflkjasdlkfjlkasjfd",
                                style: TextStyle(color: Colors.white))

                          ],

                        )
                    )

                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: BottomNavigationBar(
                  backgroundColor: Colors.black,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search, color: Colors.white,), title: Text("Search",style: TextStyle(color: Colors.white),),),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite, color: Colors.white), title: Text("Favourite",style: TextStyle(color: Colors.white),)),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings, color: Colors.white), title: Text("Settings",style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:project_trip_app/booking_calendar/hotel_booking.dart';
import 'package:project_trip_app/homeDetail/detail.dart';
import 'package:project_trip_app/gridUi/Home.dart';
//import 'package:project_trip_app/detail.dart';

import 'booking_calendar/hotel_booking.dart';
import 'homePage/homepage.dart';
import 'homePage/homepage.dart';
import 'loading_screen/loading_screen.dart';

void main() => runApp(
    MaterialApp(
  debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "detail":(context) =>  HotelDetail(),
    'homepage': (context) => HomePage(),},
    ));




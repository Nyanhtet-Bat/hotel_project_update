import 'package:flutter/material.dart';

import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:intl/intl.dart';
import 'dart:async';

import 'package:project_trip_app/model/hotel_model.dart';


class HotelDateView extends StatefulWidget {
  final Hotel hotel;

  HotelDateView({Key key, @required this.hotel}) : super(key: key);

  @override
  _HotelDateViewState createState() => _HotelDateViewState();
}

class _HotelDateViewState extends State<HotelDateView> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  Future displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
        context: context,
        initialFirstDate: _startDate,
        initialLastDate: _endDate,
        firstDate: new DateTime(DateTime.now().year - 50),
        lastDate: new DateTime(DateTime.now().year + 50));
    if (picked != null && picked.length == 2) {
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Trip - Date'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Location ${widget.hotel.title}"),
                RaisedButton(
                  child: Text("Select Dates"),
                  onPressed: () async {
                    await displayDateRangePicker(context);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Start Date: ${DateFormat('dd/MM/yyyy').format(_startDate).toString()}"),
                    Text("End Date: ${DateFormat('dd/MM/yyyy').format(_endDate).toString()}"),
                  ],
                ),
                RaisedButton(
                  child: Text("Continue"),
                  onPressed: () {
                    widget.hotel.startDate = _startDate;
                    widget.hotel.endDate = _endDate;
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) =>
//                              TripBudgetView(trip: widget.trip)),
//                    );
                  },
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:project_trip_app/homeDetail/detail.dart';
//import 'package:project_trip_app/main.dart';
//import 'package:project_trip_app/homepage.dart';


class GridTwo extends StatefulWidget {
  @override
  _GridTwoState createState() => _GridTwoState();
}

class _GridTwoState extends State<GridTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/one.jpg"
            ),
                fit: BoxFit.cover,
          )

        ),
        child: GridView.count(
            crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: InkWell(
              child: Card(
                elevation: 10.0,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Image.network("https://images.pexels.com/photos/189296/pexels-photo-189296.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                    height: 150.0,
                    width: 200.0,
                    fit: BoxFit.cover,),
                    SizedBox(height: 5.0,),

                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("\$89",
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.deepOrange
                      ),),
                    )


                  ],
                ),
              ),
              onTap: (){

                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>
                      HotelDetail()
                ));
              },
            ),
          )
          ],),
      ),
    );
  }
}

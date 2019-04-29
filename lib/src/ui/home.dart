import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,

      ),

      body: new Container(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          children: <Widget>[
            Image.asset("assets/images/bmilogo.png",
            height: 85.0,
            width: 75,
            ),


          ],

        ),
      ),
      
    );
  }
}
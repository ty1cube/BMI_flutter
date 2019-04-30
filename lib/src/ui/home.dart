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
            Image.asset('assets/images/bmilogo.png',
            height: 85.0,
            width: 75,
            ),
            Padding(padding: EdgeInsets.all(5.0),),

            new Container(
              margin: EdgeInsets.all(4.0),
              height: 250.0,
              width: 300,
              color: Colors.grey.shade400,
              child: Column(
              children: <Widget>[

                TextField(
                  controller: null,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Age",
                    hintText: "e.g 30",
                    icon: Icon(Icons.person_outline),
                  ),
                ),

                TextField(
                  controller: null,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Height in feet",
                    hintText: "e.g 6.5",
                    icon: Icon(Icons.insert_chart),
                  ),
                ),

                TextField(
                  controller: null,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Weight in KG",
                    hintText: "e.g 70",
                    icon: Icon(Icons.line_weight),
                  ),
                ),

                Padding(padding: EdgeInsets.all(11.0)),

                new Container(
                  alignment: Alignment.center,
                  child: RaisedButton(
                    
                    onPressed: () => debugPrint("Calculating..."),
                    color: Colors.pinkAccent,
                    child: Text("Calculate", style: TextStyle(fontSize: 20.0),),
                    textColor: Colors.white,
                  ),
                ),
              ],
              ),
            ),

          new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("BMI:",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize:20.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),),

              Text("Overweight",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize:20.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),),


              ],
          )


          ],

        ),
      ),
      
    );
  }
}
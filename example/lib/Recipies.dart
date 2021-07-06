import 'package:flutter/material.dart';


//void main() => runApp(new MyApp());

class Reci extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      home: new MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => new _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                    child: Text('WELCOME TO FOODIELOG',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50.0, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.0),
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.pinkAccent,
                color: Colors.pink,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schyler'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.pinkAccent,
                color: Colors.pink,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'SIGNIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Schyler'),
                    ),
                  ),
                ),
              ),
            ),
          ] ),
    );

  }
}



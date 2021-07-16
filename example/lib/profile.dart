import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class HOME extends StatefulWidget {


  @override
  _HOMEState createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/favourites');
            },
            icon: Icon(Icons.star_border_rounded),
            color: Colors.pink,
            iconSize: 35.0,
          ),
        ),
        actions: [
          Padding(
            padding:
            EdgeInsets.only(right: 0.0),
            child: GestureDetector(
              onTap: () {},
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/notifications');
                },
                icon: Icon(Icons.notifications),
                iconSize: 35.0,
                color: Colors.pink,
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(right: 0.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
              child: IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.settings_outlined),
                iconSize: 35.0,
                color: Colors.black87,
              ),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,


      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_restaurant_outlined),
            iconSize: 60.0,
          ),
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.white,
            ),
            backgroundColor: Colors.pinkAccent,
          ),
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
            ),
          ),
          Text(
            'user name',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              letterSpacing: 2.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.black,
                ),
                label: Text(
                  'ADMIRERS',
                  style: TextStyle(
                    backgroundColor: Colors.pinkAccent,
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.black,
                ),
                label: Text(
                  'ADMIRING',
                  style: TextStyle(
                    backgroundColor: Colors.pinkAccent,
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height:200.0),
        ],
      ),


    );
  }
}

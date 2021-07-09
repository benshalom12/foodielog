import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/services.dart';
import 'package:foodielog_example/Community.dart';
import 'package:foodielog_example/Recipes.dart';
import 'package:foodielog_example/chat.dart';
import 'package:foodielog_example/foodielog.dart';
import 'package:foodielog_example/Cards.dart';
import 'package:foodielog_example/Login.dart';
import 'package:foodielog_example/home.dart';
import 'package:foodielog_example/profile.dart';
import 'package:camera/camera.dart';

import 'Camera.dart';
import 'Recipies.dart';

void main() {
  runApp(Ben());
}


class Ben extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{

    '/cam': (BuildContext context) => new CameraExampleHome(),
        '/home': (BuildContext context) => new Ben(),
      },
      home: new MyApp(),
    );
  }
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final tabs = [

];
Widget appBarTitle = Text("foodielog",
style: TextStyle(
fontFamily: "Font3", fontSize: 40, fontWeight: FontWeight.bold
),
);
Icon actionIcon = new Icon(Icons.search);
  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
List<Widget> paints = [
  Container(
    child: home(),
  ),
  Container(
      child: Community(),
  ),
  Container(
      child:Community(),
  ),
  Container(
      //child: Recipes(),

  ),
  Container(
     child: HOME(),
  ),
];
int indexzero = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
        child :AppBar(
          leading:GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/cam');
          },
          child:Icon(Icons.widgets_sharp)),
          actions: [

            new IconButton(icon: actionIcon,onPressed:(){
              setState(() {
                if ( this.actionIcon.icon == Icons.search){
                  this.actionIcon = new Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,

                    ),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search,color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)
                    ),
                  );}
                else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text("foodielog",
                    style: TextStyle(
                        fontFamily: "Font3", fontSize: 40, fontWeight: FontWeight.bold
                    ),
                  );
                }


              });
            } ,),
          ],
          title: appBarTitle,

          centerTitle: true,
          backgroundColor: Colors.redAccent
        ),
        ),
        bottomNavigationBar: BottomNavyBar(
          animationDuration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        selectedIndex: indexzero,
          onItemSelected: (index){
          setState(() {
            indexzero = index;
          });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              textAlign:TextAlign.center,
              title:Text("Home"),
              activeColor: Colors.redAccent,
              inactiveColor: Colors.black

            ),
            BottomNavyBarItem(
                icon: Icon(Icons.assignment_ind_rounded),
                title:Text("Community"),
                activeColor: Colors.redAccent,
                inactiveColor: Colors.black

            ),
            BottomNavyBarItem(
                icon: Icon(Icons.add_to_photos_rounded),
                title:Text("Favourites"),
                activeColor: Colors.redAccent,
                inactiveColor: Colors.black

            ),
            BottomNavyBarItem(
                icon: Icon(Icons.add_photo_alternate),
                title:Text("Recipes"),
                activeColor: Colors.redAccent,
                inactiveColor: Colors.black

            ),
            BottomNavyBarItem(
                icon: Icon(Icons.contact_mail),
                textAlign: TextAlign.center,
                title:Text("Profile"),
                activeColor: Colors.redAccent,
                inactiveColor: Colors.black,



            ),

          ],

        ),
        body:
            Center(
              child: paints.elementAt(indexzero),
            )


            //





      );


  }
}

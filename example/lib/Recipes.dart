import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/services.dart';
import 'package:foodielog_example/foodielog.dart';
import 'package:foodielog_example/Cards.dart';
import 'package:foodielog_example/Login.dart';

void main() {
  runApp(Recipes());
}
class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  _RecipesState createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body:Row(

        children: [



         Expanded(child: Column(
       children: [
         TextButton(
           child: const Text('Null'),
           onPressed: () {/* ... */},
         ),
         Container(
           child:Text("Ask"),

         ),
         Cards1(),

       ],
     )
         )
        ],
        )
      ),
    );
  }
}

class Cards1 extends StatelessWidget {
  const Cards1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Expanded(child:Column(
        mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(

              title: Flexible(child: Text("Question",
          style: TextStyle(
              fontFamily: "Font1", fontSize: 12, fontWeight: FontWeight.bold
          ),
        ),),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 1),
                TextButton(
                  child: Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(height: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[Flexible(
                      child:
                    Text("no_of_days")
                  ),
    ]
                )
              ],
            ),Column(
              children: [
                Container(
                  //padding: EdgeInsets.all(12),
                  child: Text("Example Recipy Style"),
                  //alignment: AlignmentGeometry.lerp(a, b, t),
                )

              ],
            ),

            Row(
              children: [
                Container(
                )
              ],
            )
          ],
      ),
      ),
      )

    );
  }
}

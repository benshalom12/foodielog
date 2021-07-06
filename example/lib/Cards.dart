/// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'package:flutter/material.dart';


/// This is the stateless widget that the main application instantiates.
class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: CircleAvatar(),
              title: Text('Ben Shalom'),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://picsum.photos/id/237/500/900'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                 SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                  SizedBox(height: 14,),
                ],
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



            ListTile(
              leading: CircleAvatar(),
              title: Text('Ben Shalom'),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://picsum.photos/id/227/500/300'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
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

            ListTile(
              leading: CircleAvatar(),
              title: Text('Ben Shalom'),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://picsum.photos/id/287/500/300'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
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

            ListTile(
              leading: CircleAvatar(),
              title: Text('Ben Shalom'),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://picsum.photos/id/267/500/900'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
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

            ListTile(
              leading: CircleAvatar(),
              title: Text('Ben Shalom'),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://picsum.photos/id/238/500/900'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
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

            ListTile(
              leading: CircleAvatar(),
              title: Text('Ben Shalom'),
              subtitle: Text('Hyderabad'),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://picsum.photos/id/239/700/300'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
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


          ],
        ),
      ),
    );
  }
}

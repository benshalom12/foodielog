import 'package:flutter/material.dart';


void main()=> runApp(profile());
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Create Profile"),
          leading: Icon(Icons.arrow_back
          ),

        ),

        body: Column(
          children: [
            CircleAvatar(
              radius: 50,
            ),
            TextField(

            )
          ],
        ),
      ),

    );
  }
}

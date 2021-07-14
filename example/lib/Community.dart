import 'package:flutter/material.dart';
import 'package:foodielog_example/services/authservice1.dart';

class Community extends StatelessWidget {
const Community({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Container(

child: Column(
children: [
TextField(
decoration: InputDecoration(
border: OutlineInputBorder(),
hintText: 'Ask anything about food....',


),
),
TextButton(
style: TextButton.styleFrom(
primary: Colors.white,
onSurface: Colors.black,
  backgroundColor: Colors.redAccent,
),
  onPressed: () {
    AuthService().signOut();
  },
child: Text('ASK QUESTIONS?'),
),
Questions(),
Questions(),
Questions(),
//Questions(),





],
),

);
}
}
class Questions extends StatelessWidget {
const Questions({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Container(
padding: EdgeInsets.all(10.0),
child:Column(
children: [
Card(
child: ListTile(
title: Text('Recipe for Biryani'),
subtitle: Text('Asked by Mohit'),

),

) ,
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text('Seen'),
Text('Answers'),
Text('Date'),
],

)

],
)
);
}
}
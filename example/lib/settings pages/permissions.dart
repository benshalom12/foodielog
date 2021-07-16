import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Permissions extends StatelessWidget {
  const Permissions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Permissions',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'The following permissions will be given to Foodielog in case you grant them'
            ),
            SizedBox(height: 15.0,),
            Text('  1.Camera'),
            SizedBox(height: 10.0,),
            Text('  2.Microphone'),
            SizedBox(height: 10.0,),
            Text('  3.Storage'),
          ],
        ),
      ),
    );
  }
}
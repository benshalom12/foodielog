import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// class Upload extends StatelessWidget {
//   // Declare a field that holds the Todo.
//   final XFile? todo;
//
//   // In the constructor, require a Todo.
//   Upload({Key? key, required this.todo}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // Use the Todo to create the UI.
//     return
//   }
// }






class Upload extends StatelessWidget {
  final XFile? tempPostImage;

  const Upload({Key? key, required this.tempPostImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              title: Text("Create Post"),
            ),
            body:
               Column(
                children: [
                  Flexible(child: Image.file(File(tempPostImage!.path))),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name of the Dish',


                    ),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'About your dish',


                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      onSurface: Colors.black,
                      backgroundColor: Colors.redAccent,
                    ),
                    onPressed: () {

                    },
                    child: Text('Post'),
                  ),

                ],

              ),





        )
    );
  }
}







import 'dart:io';

import 'package:camera/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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


 FirebaseAuth auth = FirebaseAuth.instance;



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
    uploadImage(tempPostImage!);
    Navigator.pop(context);
    },
                    child: Text('Post'),
                  ),

                ],

              ),





        )
    );
  }
}
uploadImage(XFile file) async {
  final _storage = FirebaseStorage.instance;
  String imageUrl;
  // final _picker = ImagePicker();



  //Check Permissions



  //Select Image


  if (File(file.path) != null){
    //Upload to Firebase
    var snapshot = await _storage.ref()
        .child('${auth.currentUser!.uid}/')
    //maintain the number of posts each user maintains
        .putFile(File(file.path));

    var downloadUrl = await snapshot.ref.getDownloadURL();






    imageUrl = downloadUrl;
print(imageUrl);

// use this image url to put in the
  // You also have to work on favouritres
  } else {
    print('No Path Received');
  }






}



// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   String? imageUrl;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Upload Image')),
//       body: Column(
//         children: <Widget>[
//           (imageUrl != null)
//               ? Image.network(imageUrl!)
//               : Placeholder(fallbackHeight: 200.0,fallbackWidth: double.infinity),
//           SizedBox(height: 20.0,),
//           ElevatedButton(
//             child: Text('Upload Image'),
//             // color: Colors.lightBlue,
//             onPressed: () => uploadImage(),
//           )
//         ],
//       ),
//     );
//   }
//






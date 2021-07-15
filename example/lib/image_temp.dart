import 'dart:io';

import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  // Fetch the available cameras before initializing the app.

  runApp(Imgb());
}


class Imgb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upload Image')),
      body: Column(
        children: <Widget>[
          (imageUrl != null)
              ? Image.network(imageUrl!)
              : Placeholder(fallbackHeight: 200.0,fallbackWidth: double.infinity),
          SizedBox(height: 20.0,),
          ElevatedButton(
            child: Text('Upload Image'),
            // color: Colors.lightBlue,
            onPressed: () => uploadImage(),
          )
        ],
      ),
    );
  }

  uploadImage() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;


    // //Check Permissions
    // await Permission.photos.request();
    //
    // var permissionStatus = await Permission.photos.status;


      //Select Image
      image = (await _picker.getImage(source: ImageSource.camera))!;
      var file = File(image.path);

      if (image != null){
        //Upload to Firebase
        var snapshot = await _storage.ref()
            .child('folderName/imageName')
            .putFile(file);

        var downloadUrl = await snapshot.ref.getDownloadURL();

        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Path Received');
      }

    




  }

}
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


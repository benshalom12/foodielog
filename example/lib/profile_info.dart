import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'temp_image picker.dart';
import 'package:file_picker/file_picker.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';



// void main()=> runApp(profile());
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   File? _image;

  @override
  Widget build(BuildContext context) {
    // Future getImage() async{
    //   var image = await _picker1.pickImage(source: ImageSource.gallery);
    //
    //   setState(() {
    //      _image = image as File;
    //     print('Image path $_image');
    //
    //   });
    //
    // }

    Future uploadPic(BuildContext context)async {
      String fileName = basename(_image!.path);
      var firebaseStorageRef = FirebaseStorage.instance.ref().child(fileName);
      StorageUploadTask uploadTask;
      uploadTask = firebaseStorageRef.putFile(_image!) as StorageUploadTask;
       var taskSnapshot = await uploadTask.onComplete;
      setState(() {
        print("profile updated");
        Scaffold.of(context).showSnackBar(SnackBar(content :Text('profile updated')) );
      });
    }
      
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Create Profile"),
          leading: Icon(Icons.arrow_back
          ),


        ),

        body:Builder(
          builder:(context) =>Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children :<Widget>[
                SizedBox(height:20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Align(
                        alignment:Alignment.center,
                        child: CircleAvatar(
                          radius:100,
                          backgroundColor: Color(0xff476cfb),
                          child:ClipOval(
                            child:SizedBox(
                              width: 180.0,
                              height: 180.0,
                              child:( _image!=null)?Image.file(_image!,fit: BoxFit.fill,)
                                :Image.network(
                                "https://picsum.photos/id/237/500/900",
                                fit:BoxFit.fill,
                              ),
                            ),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:60.0),
                        child: IconButton(
                          icon:Icon(
                            Icons.camera,
                            size:30.0,
                          ),
                          onPressed: () async {
                            // _onImageButtonPressed(ImageSource.gallery, context: context);
                            FilePickerResult? result = await FilePicker.platform.pickFiles();

                            if(result != null) {
                              File file = File(result.files.single.path!);
                              _image = file;
                            } else {
                              // User canceled the picker
                            }
                          },
                        )
                      )
                    ],

                ),
                SizedBox(height: 20.0,),
              TextFormField(
                decoration: InputDecoration(
                      labelText: 'USERNAME',
                      labelStyle: TextStyle(
                          fontFamily: 'Trueno',
                          fontSize: 12.0,
                          color: Colors.grey.withOpacity(0.5)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Colors.lightGreen),
                      )),
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                   Align(
                     alignment:Alignment.centerLeft ,
                     child:Container(
                       child: Column(children:<Widget>[
                         Align(alignment:Alignment.centerLeft ,
                         child: Text("USERNAME",
                         style:TextStyle(
                           color:Colors.lightGreen,fontSize: 18.0
                         )
                         ),
                         ),
                       ]),
                     )
                   ),
                ],
              ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                  children:<Widget>[
                    RaisedButton(
                      color:Color(0xff476cfb),
                      onPressed: (){
                       
                      },
                      elevation:4.0,
                      splashColor: Colors.lightGreen,
                      child:Text(
                        'Submit',
                         style:TextStyle(
                          color:Colors.white,
                          fontSize: 16.0),
                      ) ,  
                      ),
                    
                  ],
                ),
                

              ],


            )
          ),


        ),
      ),
    )   ;
  }

  // void setState(Null Function() param0) {}

}
//
// class storageTaskSnapshot {
// }



class StorageUploadTask {
  get onComplete => null;
}

// class StorageReference {
// }
// final ImagePicker _picker1 = ImagePicker();
//
// void _onImageButtonPressed(ImageSource source,
//     {BuildContext? context, bool isMultiImage = false}) async {
//
//     await _displayPickImageDialog(context!,
//             (double? maxWidth, double? maxHeight, int? quality) async {
//           try {
//             final pickedFile = await _picker1.pickImage(
//               source: source,
//               maxWidth: maxWidth,
//               maxHeight: maxHeight,
//               imageQuality: quality,
//             );
//             setState(() {
//               _imageFile = pickedFile;
//             });
//           } catch (e) {
//             setState(() {
//               _pickImageError = e;
//             });
//           }
//         });
//
// }
// Future<void> _displayPickImageDialog(
//     BuildContext context, OnPickImageCallback onPick) async {
//   return showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Add optional parameters'),
//           content: Column(
//             children: <Widget>[
//               TextField(
//                 controller: maxWidthController,
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//                 decoration:
//                 InputDecoration(hintText: "Enter maxWidth if desired"),
//               ),
//               TextField(
//                 controller: maxHeightController,
//                 keyboardType: TextInputType.numberWithOptions(decimal: true),
//                 decoration:
//                 InputDecoration(hintText: "Enter maxHeight if desired"),
//               ),
//               TextField(
//                 controller: qualityController,
//                 keyboardType: TextInputType.number,
//                 decoration:
//                 InputDecoration(hintText: "Enter quality if desired"),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('CANCEL'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//                 child: const Text('PICK'),
//                 onPressed: () {
//                   double? width = maxWidthController.text.isNotEmpty
//                       ? double.parse(maxWidthController.text)
//                       : null;
//                   double? height = maxHeightController.text.isNotEmpty
//                       ? double.parse(maxHeightController.text)
//                       : null;
//                   int? quality = qualityController.text.isNotEmpty
//                       ? int.parse(qualityController.text)
//                       : null;
//                   onPick(width, height, quality);
//                   Navigator.of(context).pop();
//                 }),
//           ],
//         );
//       });
// }
// }
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
                              child: Image.network(
                                "data:image/jpeg;base64,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",
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
                            FontAwesomeIcons.camera,
                            size:30.0,
                          ),
                          onPressed: (){
                            //
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
                        borderSide: BorderSide(color: Colors.green),
                      )),
              )
              ]

            )
          )
              


        ),
      ),
    )   ;
  }
}

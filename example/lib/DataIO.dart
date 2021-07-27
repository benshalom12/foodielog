
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_database/firebase_database.dart';


final textcontroller = TextEditingController();
final databaseRef = FirebaseDatabase.instance.reference();
final Future<FirebaseApp> _future = Firebase.initializeApp();


void addData(String path,String name,dynamic value ) {
  databaseRef.child(path);
  databaseRef.push().set({name: value});
}

void printFirebase(){
  databaseRef.once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
    var db = FirebaseDatabase.instance.reference().child("zoom_users");
    db.once().then((DataSnapshot snapshot){
      Map<dynamic, dynamic> values = snapshot.value;
      values.forEach((key,values) {
        print(values["name"]);
      });
    });
  });
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_database/firebase_database.dart';


final textcontroller = TextEditingController();
final databaseRef = FirebaseDatabase.instance.reference();
final Future<FirebaseApp> _future = Firebase.initializeApp();


void addData(dynamic data) {
  databaseRef.push().set({'name': data});
}

void printFirebase(){
  databaseRef.once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
  });
}
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_core/firebase_core.dart';
// FirebaseApp defaultApp = Firebase.app();
// await Firebase.initializeApp(
// name: 'SecondaryApp',
// options: const FirebaseOptions(
// appId: 'my_appId',
// apiKey: 'my_apiKey',
// messagingSenderId: 'my_messagingSenderId',
// projectId: 'my_projectId'
// )
// );
//
// FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
// void main()=>runApp(UserInformation());
// class Home0 extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<Home0> {
//   final textcontroller = TextEditingController();
//   final databaseRef = FirebaseDatabase.instance.reference();
//   final Future<FirebaseApp> _future = Firebase.initializeApp();
//
//   void addData(String data) {
//     databaseRef.push().set({'name': data, 'comment': 'A good season'});
//   }
//
//   void printFirebase(){
//     databaseRef.once().then((DataSnapshot snapshot) {
//       print('Data : ${snapshot.value}');
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     printFirebase();
//     return MaterialApp(
//
//     home:Scaffold(
//       appBar: AppBar(
//         title: Text("Firebase Demo"),
//       ),
//       body: FutureBuilder(
//           future: _future,
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               return Text(snapshot.error.toString());
//             } else {
//               return Container(
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(height: 250.0),
//                     Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: TextField(
//                         controller: textcontroller,
//                       ),
//                     ),
//                     SizedBox(height: 30.0),
//                     Center(
//                         child: RaisedButton(
//                             color: Colors.pinkAccent,
//                             child: Text("Save to Database"),
//                             onPressed: () {
//                               addData(textcontroller.text);
//                               //call method flutter upload
//                             }
//                         )
//                     ),
//                   ],
//                 ),
//               );
//             }
//           }
//       ),
//     )
//     );
//   }
// }
//
// class UserInformation extends StatefulWidget {
//   @override
//   _UserInformationState createState() => _UserInformationState();
// }
//
// class _UserInformationState extends State<UserInformation> {
//   final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//       stream: _usersStream,
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return Text('Something went wrong');
//         }
//
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Text("Loading");
//         }
//
//         return new ListView(
//           children: snapshot.data!.docs.map((DocumentSnapshot document) {
//             Map<String, dynamic> data = document.data() as Map<String, dynamic>;
//             return new ListTile(
//               title: new Text(data['full_name']),
//               subtitle: new Text(data['company']),
//             );
//           }).toList(),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:firebase_core/firebase_core.dart';
void main()=>runApp(HomePage());
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  @override
  Widget build(BuildContext context) {
    printFirebase();
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text("Firebase Demo"),
      ),
      body: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 250.0),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: textcontroller,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Center(
                        child: ElevatedButton(
                          // color: Colors.pinkAccent,
                            child: Text("Save to Database"),
                            onPressed: () {
                              addData(("https://picsum.photos/id/237/500/900"));
                              //call method flutter upload
                            }
                        )
                    ),
                  ],
                ),
              );
            }
          }
      ),
    )
    );
  }
}
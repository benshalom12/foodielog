import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Fetch the available cameras before initializing the app.

  runApp(Post1());
}

class Post1 extends StatefulWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  _Post1State createState() => _Post1State();
}
final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('users').snapshots();

class _Post1State extends State<Post1> {
  final firestoreInstance = FirebaseFirestore.instance;
  Object? fine;
  void _onPressed0() {
    firestoreInstance.collection("users").add(
        {
          "name" : "john",
          "age" : 50,
          "email" : "example@example.com",
          "address" : {
            "street" : "street 24",
            "city" : "new york"
          }
        }).then((value){
      print(value.id);
    });
  }
  void _onPressed() {
    firestoreInstance.collection("users").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        fine = result.data();

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Post0();
  }
}

// late FirebaseFirestore app;
class Post0 extends StatelessWidget {
  const Post0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Environment'),
        ),
        body: Post(),
      ),
    );
  }
}





class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.network("https://public.rive.app/community/runtime-files/262-518-eggard-is-a-gud-boi.riv"),
        ),
      );

  }
}



class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
        child: Column(
          children: [
            ListTile(

              leading: CircleAvatar(),
              title: Text('<username>'),
              subtitle: Text(_usersStream.toString()),
            ),
            Column(
              children: [
                Container(

                  child: Image.network( 'https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg'),
                  //fit: BoxFit.fill,



                )
              ],
            ),
              ListTile(
                leading: IconButton(onPressed: (){

                },
                  icon: Icon(Icons.volunteer_activism),),
                trailing: IconButton(onPressed: (){

                },
                  icon: Icon(Icons.star_border),),

                    ),
      /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: const Text('Null'),
                  onPressed: () {/* ... */},
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('LISTEN'),
                      onPressed: () {/* ... */},
                    ),
                    SizedBox(height: 14,),
                  ],
                )
              ],
            ),*/
Container(
  padding: EdgeInsets.fromLTRB(13.0, 0.0,20.0, 20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("<recipy_name>",
                    style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,),

                    //alignment: AlignmentGeometry.lerp(a, b, t),

                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'fine.toString()'


                    ),
                     // style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,),

                    //alignment: AlignmentGeometry.lerp(a, b, t),

                  ),


                ],
              )
)
          ],
        ),
      ),
    );
  }
}

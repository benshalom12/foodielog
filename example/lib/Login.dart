import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodielog_example/Camera.dart';
import 'package:foodielog_example/Settings.dart';
import 'package:foodielog_example/main.dart';
import 'package:camera/camera.dart';
import 'chat.dart';

//void main() => runApp( Login0());
Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(Login0());
}

class Login0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
       // '/signup': (BuildContext context) => new SignupPage(),
        '/login': (BuildContext context) => new Ben(),
        '/chat': (BuildContext context) => new chat(),
        '/settings': (BuildContext context) => new Settings(),
        '/home': (BuildContext context) => new Ben(),
      },
      home: new MyloginPage(),
    );
  }
}

class MyloginPage extends StatefulWidget {
  @override
  _MyloginPageState createState() => new _MyloginPageState();
}

class _MyloginPageState extends State<MyloginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: new Stack(
            fit:StackFit.expand,
            children:<Widget>[
              new Image(
                image: new AssetImage("lib/assets/food.jpg"),
                fit: BoxFit.cover,
                color: Colors.black87,
                colorBlendMode: BlendMode.darken,
              ),


              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(

                    child:Stack(
                      children: <Widget>[
                        Container(
                            height:110,
                            child:Center(
                              child: Text('FOODIELOG',
                                  style: TextStyle(
                                      color: Colors.pinkAccent,fontFamily: 'ITALIC',
                                      fontSize: 50.0, fontWeight: FontWeight.bold)),
                            )
                        ),

                        Container(
                            height:180,
                            child:Center(
                              child: Text('Search, Cook, Eat, Share',
                                  style: TextStyle(
                                      color: Colors.white,fontFamily: 'ITALIC',
                                      fontSize: 20.0, fontWeight: FontWeight.bold)),
                            )
                        ),
                      ],
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle: TextStyle(
                                    fontFamily: 'Schyler',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pinkAccent),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'PASSWORD',
                                labelStyle: TextStyle(
                                    fontFamily: 'Schyler',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pinkAccent),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white))),
                            obscureText: true,
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Schyler',
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                          SizedBox(height: 40.0),
                          Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.pinkAccent,
                              color: Colors.pinkAccent,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 40.0,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(

                                      style: BorderStyle.solid,
                                      width: 1.0),
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(width: 10.0),
                                  Center(
                                    child: Text('Log in with google',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Schyler')),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New to foodielog ?',

                        style: TextStyle(
                          fontFamily: 'Schyler',
                          color: Colors.pink,
                        ),
                      ),

                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.pink,
                              fontFamily: 'Schyler',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              )
            ]
        ));

  }
}


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodielog_example/login1/login_page1.dart';
import 'package:foodielog_example/services/authservice1.dart';
import 'package:camera/camera.dart';

import '../Camera.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuth(),
    );
  }
}

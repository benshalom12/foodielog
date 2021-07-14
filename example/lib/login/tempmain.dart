import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodielog_example/login/auth_screen_view.dart';
import 'package:foodielog_example/login/home_screen.dart';
import 'package:foodielog_example/login/user_model.dart';
import 'package:foodielog_example/services/authservices.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
            create: (context) =>
            context.read<AuthenticationService>().authStateChanges, initialData: null,),
      ],
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.green[400],
            accentColor: Colors.deepOrange[200]),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      //If the user is successfully Logged-In.
      return HomePage();
    } else {
      //If the user is not Logged-In.
      return AuthScreenView();
    }
  }
}

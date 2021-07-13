import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodielog_example/error_handler.dart';
// import 'package:foodielog_example/login_page.dart';
import 'package:foodielog_example/Login.dart';
import '../home.dart';
class AuthService{
  //determine if the user is authenticated.
  handleAuth(){
    return StreamBuilder(

      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context,snapshot){
        if (snapshot.hasData){
          return home();
          }
        else
          return Login0();
    });
    }

  // sign out
  signOut(){
    FirebaseAuth.instance.signOut();
  }

  //sign In
  signIn(String email,String password, context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email:email,password:password)
        .then((val){
      print('signed in');
    });
  }
  // signup a new user
  signUp(String email,String password){
    return  FirebaseAuth.instance
        .createUserWithEmailAndPassword(email:email,password:password);
  }

  //reset password
  resetPasswordLink(String email){
    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodielog_example/user_model.dart';


class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  userModel userModel = user_model();
  final userRef = Firestore.instance.collection("users");

  AuthenticationService(this._firebaseAuth);

// managing the user state via stream.
// stream provides an immediate event of
// the user's current authentication state,
// and then provides subsequent events whenever
// the authentication state changes.
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

//1
  Future<String> signIn({required String email,required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return "Signed In";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "No user found for that email.";
      } else if (e.code == 'wrong-password') {
        return "Wrong password provided for that user.";
      } else {
        return "Something Went Wrong.";
      }
    }
  }

//2
  Future<String> signUp({required String email,required  String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password provided is too weak.";
      } else if (e.code == 'email-already-in-use') {
        return "The account already exists for that email.";
      } else {
        return "Something Went Wrong.";
      }
    } catch (e) {
      print(e);
    }
  }

//3
  Future<void> addUserToDB(
      {required String uid,required  String username,required  String email,required DateTime timestamp}) async {
    userModel = userModel(
        uid: uid, username: username, email: email, timestamp: timestamp);

    await userRef.document(uid).setData(userModel.toMap(userModel));
  }

//4
  Future<UserMetadata> getUserFromDB({required String uid}) async {
    final DocumentSnapshot doc = await userRef.document(uid).get();

    //print(doc.data());

    return userModel.fromMap(doc.data());
  }

//5
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}

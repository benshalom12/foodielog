import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodielog_example/login/user_model.dart';

class AuthenticationService {
  late final FirebaseAuth _firebaseAuth;
  UserModel userModel = UserModel();
  final userRef = FirebaseFirestore.instance.collection("users");

  AuthenticationService(this._firebaseAuth);

// managing the user state via stream.
// stream provides an immediate event of
// the user's current authentication state,
// and then provides subsequent events whenever
// the authentication state changes.
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

//1
  Future<String> signIn({required String email, required String password}) async {
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
  Future<String> signUp({required String email, required String password}) async {
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
      throw(e);
    }
  }

//3
  Future<void> addUserToDB(
      {required String uid, required String username, required String email, required DateTime timestamp}) async {
    userModel = UserModel(
        uid: uid, username: username, email: email, timestamp: timestamp);

    await userRef.doc(uid).set(userModel.toMap(userModel));
  }

//4
  Future<UserModel> getUserFromDB({required String uid}) async {
    final DocumentSnapshot docu = await userRef.doc(uid).get();

    //print(doc.data());

    return UserModel.fromMap(docu.get(field));
  }

//5
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}

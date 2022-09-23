// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final _auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<String?> googleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      rethrow;
    }
    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  Future<void> sendUserDataToDB() async {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection("users-data");
    await collectionRef
        .doc(user?.email)
        .set({
          "uid": user?.uid,
          "name": user?.displayName,
          "email": user?.email,
        })
        .then((value) => print('user data added'))
        .catchError((error) => print('error add user'));
  }
}

import "package:cloud_firestore/cloud_firestore.dart";
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//log in
  Future<User?> signIn(String email, String password, String userName) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }
// cikis yap
  signOut() async {
    return await _auth.signOut();
  }
// register islemi
  Future<User?> createPerson(String name, String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    await _firestore.collection("Person").doc(user.user?.uid).set({
      "userName": name,
      'email': email,
      "password": password,
    });
//firestore a gidecek hazır collection ögesi
    return user.user;
  }
}

import 'package:final_project/view/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  FirebaseAuth _auth = FirebaseAuth.instance;

  late String email, password, name;
  Rxn<User> _user = Rxn<User>();
  String? get user => _user.value!.email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);

    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;

    final AuthCredential Credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(Credential);
    print(userCredential.user);
  }

  void SignInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(HomeView());
    } catch (e) {
      print("$e");
      Get.snackbar("Error login account", "$e",
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    }
  }
}

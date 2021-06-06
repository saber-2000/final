import 'package:final_project/view/auth/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeClient extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOME",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            _auth.signOut();
            Get.offAll(LoginView());
          },
          tooltip: 'LogOut',
          child: Icon(Icons.home),
        ), // This trailing comma ma
      ),
    );
  }
}

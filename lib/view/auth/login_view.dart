import 'package:final_project/core/view_model/auth_view_model.dart';
import 'package:final_project/view/widgets/CustomTextFormFieldPass.dart';
import 'package:final_project/view/widgets/custom_text.dart';
import 'package:final_project/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

import 'Menu.dart';


class LoginView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[55],
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
               SizedBox(
                height: 20,
              ),
             
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 100),
                child: Menu(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Welcome !",
                      fontSize: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 60),
                child: CustomText(
                  text: 'Sign in to Continue',
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 40),
                child: CustomTextFormField(
                  text: 'Email',
                  hint: 'iamdavid@gmail.com',
                  
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 20),
                child: CustomTextFormFieldPass(
                  text: 'Password',
                  hint: '**********',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 40),
                child: CustomText(
                  text: 'Forgot Password?',
                  fontSize: 14,
                  alignment: Alignment.topRight,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 20),
                child: RaisedButton(
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      controller.SignInWithEmailAndPassword();
                    }
                  },
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        backgroundColor: Colors.black,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 40),
                child: CustomText(
                  text: '-OR-',
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500),
                child: SignInButton(Buttons.Google, onPressed: () {
                  controller.googleSignInMethod();
                }),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}


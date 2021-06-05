import 'package:final_project/core/view_model/auth_view_model.dart';
import 'package:final_project/view/widgets/CustomTextFormFieldPass.dart';
import 'package:final_project/view/widgets/custom_buttom.dart';
import 'package:final_project/view/widgets/custom_text.dart';
import 'package:final_project/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class LoginView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Welcome,",
                    fontSize: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CustomText(
                      text: "Sign Up",
                      color: kPrimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: 'Sign in to Continue',
                fontSize: 14,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                text: 'Email',
                hint: 'iamdavid@gmail.com',
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextFormFieldPass(
                text: 'Password',
                hint: '**********',
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Forgot Password?',
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
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
              SizedBox(
                height: 40,
              ),
              CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 40,
              ),
              SignInButton(Buttons.Google, onPressed: () {
                controller.googleSignInMethod();
              })
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:final_project/core/view_model/auth_view_model.dart';
import 'package:final_project/view/widgets/CustomFormFieldName.dart';
import 'package:final_project/view/widgets/CustomTextFormFieldPass.dart';
import 'package:final_project/view/widgets/custom_text.dart';
import 'package:final_project/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'MenuR.dart';

class RegisterScreen extends GetWidget<AuthViewModel> {
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.lightBlue[55],
      body:
       Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 100),
                child: MenuR(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "SIGN UP  !",
                      fontSize: 30,
                    ),
                  ],
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 500, right: 500, top: 40),
                child: CustomTextFormFieldName(
                  text: 'NAME',
                  hint: 'sadi',
                ),
              ),
              SizedBox(
                height: 10,
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
                padding: const EdgeInsets.only(left: 500, right: 500, top: 20),
                child: RaisedButton(
                  onPressed: () {
                 _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      controller.CreateAccountWithEmailAndPassword();
                    }
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        backgroundColor: Colors.black,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:final_project/core/view_model/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomTextFormField extends GetWidget<AuthViewModel> {
  final String text;

  final String hint;

  CustomTextFormField({
    required this.text,
    required this.hint,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: (value){
              controller.email=value!;
            },
            validator: (value) {
              if (value == null) {
                print("err");
              }
            },
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:final_project/core/view_model/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomTextFormFieldName extends GetWidget<AuthViewModel> {
  final String text;

  final String hint;

  CustomTextFormFieldName({
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
            onSaved: (value) {
              controller.name = value!;
            },
            validator: (value) {
              if (value == null) {
                print("errur");
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

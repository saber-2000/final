import 'package:final_project/core/view_model/auth_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'custom_text.dart';

class CustomTextFormFieldPass extends GetWidget<AuthViewModel> {
  final String text;

  final String hint;

  CustomTextFormFieldPass({
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
              controller.password = value!;
            },
            validator: (value) {
              if (value == null) {
                print("erreur");
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

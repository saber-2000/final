import 'package:final_project/core/view_model/auth_view_model.dart';
<<<<<<< HEAD
import 'package:final_project/view/widgets/CustomTextFormFieldPass.dart';
=======
import 'package:final_project/view/home_screen.dart';
>>>>>>> b9f8446a79ef9643fa5d3c4f09f03d80030ba2f6
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
      backgroundColor: Colors.lightBlue[45], 
     
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child :Form(
          key: _formKey,
          child: Column(
            children: [
<<<<<<< HEAD
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
=======
              Padding(
              padding: const EdgeInsets.only(left: 120,right: 100),

                child: Menu(),
>>>>>>> b9f8446a79ef9643fa5d3c4f09f03d80030ba2f6
              ),
               
              Padding(
padding: const EdgeInsets.only(left: 500,right: 500,top: 60),
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
                 
padding: const EdgeInsets.only(left: 500,right: 500,top: 40),
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
                
padding: const EdgeInsets.only(left: 500,right: 500,top: 20),
                  child: CustomTextFormField(
                      text: 'Email',
                      hint: 'iamdavid@gmail.com',

                      onSave: (value) {},
                      validator: (value) {}),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  
padding: const EdgeInsets.only(left: 500,right: 500,top: 40),
                  child: CustomTextFormField(
                    text: 'Password',
                    hint: '**********',
                    onSave: (value) {},
                    validator: (value) {
                      if (value == null) {
                        print('error');
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  
padding: const EdgeInsets.only(left: 500,right: 500,top: 20),
                  child: CustomText(
                    text: 'Forgot Password?',
                    fontSize: 14,
                    alignment: Alignment.topRight,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                 
padding: const EdgeInsets.only(left: 500,right: 500,top: 40),
                  child: CustomButton(
                    onPress: () {},
                    text: 'SIGN IN',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
      
padding: const EdgeInsets.only(left: 500,right: 500),
                  child: CustomText(
                    text: '-OR-',
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                
padding: const EdgeInsets.only(left: 500,right: 500),
                  child: SignInButton(Buttons.Google, onPressed: () {
                    controller.googleSignInMethod();
                  }),
                )
          ], 
        ),
      ),),
    );
  }
}


  class  Menu extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[ Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
  FlatButton.icon(onPressed:(){ Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
            ),); } , icon : Icon(Icons.home),    
  label: Text('Home', 
         style: TextStyle(color: Colors.black),), ),

         FlatButton.icon(onPressed:(){} , icon : Icon(Icons.contact_phone),    
  label: Text('Contact us', 
         style: TextStyle(color: Colors.black),), ),

         FlatButton.icon(onPressed:(){} , icon : Icon(Icons.add_box_outlined),    
  label: Text('About us', 
         style: TextStyle(color: Colors.black),), ),

         FlatButton.icon(onPressed:(){} , icon : Icon(Icons.help_center),    
  label: Text('Help', 
         style: TextStyle(color: Colors.black),), ),
  ],
            ),
            Row(  children: [
   
    _rtegisteredBottun(),
     ],
                  
                )
           ], ),
            );
          }
      
    
    Widget  _rtegisteredBottun() {
      return Container(
padding: EdgeInsets.symmetric(horizontal: 30 , vertical: 8),
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(30),
  boxShadow: [ BoxShadow(
    color: Colors.grey,
  spreadRadius : 10,
  blurRadius: 12,
  
  ), 
  ], ),
  child: Text('Registed', 
 style : TextStyle(
   fontWeight: FontWeight.bold,
   color: Colors.black54,
   
 )
    ),
      );
    }
    
}
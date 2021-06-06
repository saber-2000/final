import 'package:final_project/view/Register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton.icon(
                onPressed: () {
              
                },
                icon: Icon(Icons.home),
                label: Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.contact_phone),
                label: Text(
                  'Contact us',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
                label: Text(
                  'About us',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.help_center),
                label: Text(
                  'Help',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 10,
            blurRadius: 12,
          ),
        ],
      ),
      
      child: FlatButton(onPressed: (){
        Get.to(RegisterScreen());
      }, child: Text(
        "Register",style: TextStyle(
           
            fontWeight: FontWeight.bold,
            color: Colors.black54,
        ),
      ),)
          
          
              ),
            ],
          )
        ],
      ),
    );
  }

}
import 'package:final_project/view/auth/login_view.dart';
import 'package:final_project/view/home_screen.dart';
import 'package:flutter/material.dart';

class  CustomAppBar extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[ Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
  FlatButton.icon(onPressed:(){
    HomeScreen();
  } , icon : Icon(Icons.home),    
  label: Text('Home', 
         style: TextStyle(color: Colors.black),), ),

   FlatButton.icon(onPressed:(){
     Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LoginView();
            },
            ),); 
  } , icon : Icon(Icons.work),    
  label: Text('Client', 
         style: TextStyle(color: Colors.black),), ),

  FlatButton.icon(onPressed:(){
    HomeScreen();
  } , icon : Icon(Icons.wc_outlined),    
  label: Text('Artisan', 
         style: TextStyle(color: Colors.black),), ),


  FlatButton.icon(onPressed:(){
    HomeScreen();
  } , icon : Icon(Icons.work_sharp),    
  label: Text('Admin', 
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
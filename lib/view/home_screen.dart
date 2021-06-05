
import 'package:final_project/view/widgets/app_bar.dart';
import 'package:final_project/view/widgets/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 120,right: 100),
              child: CustomAppBar(),
            ),
            Body(),
          ],
        ),
     
    );
  }
}

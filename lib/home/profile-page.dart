import 'package:flutter/material.dart';
import 'package:furniture_app/template.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Profile Page'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/signin_screen.dart';
import 'package:project1/signupexpert_screen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget
  {



  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SigninScreen(),


    );
  }


}





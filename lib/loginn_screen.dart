
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LoginnScreen extends StatelessWidget {
  const LoginnScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color((0xFF057c82)),
      ),
      backgroundColor: Color((0xFF057c82)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          'Login',
          style: TextStyle(
          fontSize: 80.0,
         color: Color(0xFFe3f5ee),
         fontWeight: FontWeight.bold,
           ),
          ),
            SizedBox(
               height: 200.0,
                   ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value){
                print(value);
            },
            decoration: InputDecoration(
            filled: true,
           fillColor: Color(0xFFe3f5ee),
             labelText: 'Email Address',
             prefixIcon: Icon(
             Icons.email,
             ),
             labelStyle: TextStyle(
             color: Color(0xFF4B907C),
            ),
              border: OutlineInputBorder(),

           ),
            ),
            SizedBox(
              height: 6.0,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (value){
                print(value);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFe3f5ee),
                labelText: 'password',
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                labelStyle: TextStyle(
                  color: Color(0xFF4B907C),
                ),
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 20,
            ), 
            Container(
              width: double.infinity,
              color: Color(0xFF0e3f5ee),
              child: MaterialButton(onPressed: (){

              },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Color(0xFF4B907C),
                  ),
                ),
              ),
            ),
          ],
         ),
        ),
    );



  }

}

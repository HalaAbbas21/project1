


  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

  class _SigninScreenState extends State<SigninScreen> {
  bool hide =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F4F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      margin: EdgeInsets.only(top:10,bottom: 5),
                      alignment: Alignment.topCenter,
                      child:Image(
                        image: AssetImage('assets/images/iconlogin.png'),
                      ),

                      ),
                  ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff057c82),
                      letterSpacing: 1.0,
                    ),
                  ),
                  Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff324B4D),
                    ),
                  ),
                ],
              ),
              Container(
              margin: EdgeInsets.only(left: 20,right: 20,top:40),
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff057c82)),
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffE6F4F1),
              ),
              alignment: Alignment.center,

              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (value){
                  print(value);
                },
                cursorColor: Color(0xff94B0B2),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff057c82),
                  ),
                  hintText:'Email or Username',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:10),
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff057c82)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffE6F4F1),
                ),
                alignment: Alignment.center,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  onSubmitted: (value){
                    print(value);
                  },
                  cursorColor: Color(0xff94B0B2),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Color(0xff057c82),
                    ),
                    hintText:'Password',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        hide=!hide;
                      });
                    },
                      icon:hide? Icon(Icons.visibility):Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:2,right:20),

                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child:TextButton(onPressed: (){},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xff324B4D),
                      ),
                    ),
                  ),
                  onTap: ()=>{
                    },
                ),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  margin:EdgeInsets.only(left: 20,right: 20,top: 30) ,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                   color: Color(0xdd057c82),
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:(context) => SignupScreen(),
                        ),
                    );

                  },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color(0xffE3F5EE),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                ),
              ),
                SizedBox(height: 3),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Don\'t have an account?',
                    style: TextStyle(
                      color: Color(0xff324B4D),
                    ),
                  ),


                  TextButton(onPressed: (){},

                      child: Text(
                          'Register Now',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff057c82),
                        ),
                      ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}




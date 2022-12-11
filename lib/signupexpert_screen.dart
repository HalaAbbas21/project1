

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupexpertScreen extends StatefulWidget {
  const SignupexpertScreen({Key? key}) : super(key: key);



  @override
  State<SignupexpertScreen> createState() => _SignupexpertScreenState();
}


    class _SignupexpertScreenState extends State<SignupexpertScreen> {
    bool hide =true;
    List<String> items=['The consult type you provide','Medical','Vocational','Psychological',
    'Familial','Business'];
    String? selectedItem='The consult type you provide';
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6F4F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child:  Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/login.png"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 40,
                            color: Color(0xff057c82),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height:3),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff057c82),
                      letterSpacing: 1.0,
                    ),
                  ),

                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:15),
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff057c82)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffE6F4F1),
                ),
                alignment: Alignment.center,

                child: TextField(
                  keyboardType: TextInputType.name,
                  onSubmitted: (value){
                    print(value);
                  },
                  cursorColor: Color(0xff94B0B2),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff057c82),
                    ),
                    hintText:'Full Name',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5),
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
                    hintText:'Email Address',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5),
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
                      icon:hide? Icon(Icons.visibility):
                      Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5),
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff057c82)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffE6F4F1),
                ),
                alignment: Alignment.center,

                child: TextField(
                  keyboardType: TextInputType.phone,
                  onSubmitted: (value){
                    print(value);
                  },
                  cursorColor: Color(0xff94B0B2),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Color(0xff057c82),
                    ),
                    hintText:'phone number',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5),
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff057c82)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffE6F4F1),
                ),
                alignment: Alignment.center,

                child: TextField(
                  onSubmitted: (value){
                    print(value);
                  },
                  cursorColor: Color(0xff94B0B2),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.place,
                      color: Color(0xff057c82),
                    ),
                    hintText:'Address',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5),
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff057c82)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffE6F4F1),
                ),
                alignment: Alignment.center,

                child:
                DropdownButtonFormField<String>(
                 hint:Text('The consult type you provide',
                   style: TextStyle(
                     color: Color(0xff94B0B2),
                   ),
                 ) ,
                  value: selectedItem,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items:items
                    .map((String items) {
                      return DropdownMenuItem(
                        value: items,
                          child: Text(items),
                      );
                  }).toList(),
                  onChanged: (String? newValue){
                    setState(() {
                      selectedItem=newValue;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top:5),
                padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff057c82)),
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffE6F4F1),
                ),
                alignment: Alignment.center,

                child: TextField(
                  onSubmitted: (value){
                    print(value);
                  },
                  cursorColor: Color(0xff94B0B2),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.star_outline_sharp,
                      color: Color(0xff057c82),
                    ),
                    hintText:'Your experience',
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),




              SizedBox(height: 10,),

              GestureDetector(
                onTap: () => {},
                child: Container(
                  margin:EdgeInsets.only(left: 20,right: 20,top:40) ,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  alignment: Alignment.center,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Color(0xdd057c82),
                    borderRadius: BorderRadius.circular(50),

                  ),

                  child: MaterialButton(onPressed: (){},
                    child: Text(
                      'Sign up as expert',
                      style: TextStyle(
                        color: Color(0xffE3F5EE),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),


                ),
              ),
              SizedBox(height:1),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Registered?',
                    style: TextStyle(
                      color: Color(0xff324B4D),
                    ),
                  ),


                  TextButton(onPressed: (){},

                    child: Text(
                      'Log in here',
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

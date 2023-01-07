
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ExpertProByUser extends StatefulWidget {
  const ExpertProByUser({Key? key}) : super(key: key);

  @override
  State<ExpertProByUser> createState() => _ExpertProByUserState();
}

class _ExpertProByUserState extends State<ExpertProByUser> {

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE6F4F1),
      appBar: buildAppBar(context),
      body:Column(
        children: [
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: const [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white70,
                        backgroundImage: AssetImage("assets/images/doctor.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20.20,10,20,5),
                    child: Text(
                      'Dr.kareem Ahmad',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                        color: Color(0xff057c82),
                      ),
                    ),
                  ),
                  const SizedBox(height: 0,),
                  const Text(
                    'Cardiologist',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff94B0B2),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star_purple500_outlined,
                          color: Colors.amberAccent,
                          size: 24,
                        ),
                        SizedBox(width: 2,),
                        Text(
                            '4.8',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff324B4D),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Text(
                          'Info',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            color: Color(0xff057c82),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Price Per Hour',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff94B0B2),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '200 s.p',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff057c82),
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Color(0xff057c82),
                      thickness: 3,
                      width: 20,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Experience',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff94B0B2),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '+8 years',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff057c82),
                          ),
                        ),
                      ],
                    ),
                   const VerticalDivider(
                     color: Color(0xff057c82),
                     thickness: 3,
                     width: 20,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Available Time',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff94B0B2),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          '3-6 PM',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff057c82),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
         const SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),

               child:Container(
                height: 50,
                 width: double.infinity,
                 margin:const EdgeInsets.only(left: 20,right: 20,top: 30) ,
                 padding: const EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
               color: const Color(0xdd057c82),
               borderRadius: BorderRadius.circular(50),
                ),
                 child: TextButton(onPressed: (){},
                   child: const Text(
                     'Make Appointment ',
                       style: TextStyle(
                       color: Color(0xffE3F5EE),
                       fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                   ),
                 ),
               ),
            ),
        ],
      ) ,
      bottomNavigationBar: Container(
        color: const Color(0xffE6F4F1),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GNav(
            backgroundColor: const Color(0xffE6F4F1),
            color: const Color(0xff057c82),
            activeColor: const Color(0xff057c82),
            tabBackgroundColor: const Color(0xffE6F4F1),
            gap: 5,
            onTabChange: (indexx){
              print(indexx);
            },
            padding: const EdgeInsets.all(8),
            tabs:const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
                text: 'Favorites',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildAppBar(BuildContext context) {
    return AppBar(
      leading: const BackButton(color: Color(0xff057c82),),
      backgroundColor: const Color(0xffE6F4F1),
      elevation: 0,
    );
  }
}

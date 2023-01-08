import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ExpertAppointmentScreen extends StatefulWidget {
  const ExpertAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<ExpertAppointmentScreen> createState() => _ExpertAppointmentScreenState();
}

class _ExpertAppointmentScreenState extends State<ExpertAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE6F4F1),
      appBar: AppBar(
        leading: const BackButton(color: Color(0xff057c82),),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: const Text(
                    'My Appointments',
                    style: TextStyle(
                      color: Color(0xff057c82),
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(width: 100,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(
                        left: 15, top: 10, bottom: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/images/doctor.png',
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
        backgroundColor: const Color(0xffE6F4F1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'January 2023',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xff057c82),
                    fontSize: 26.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    demoDates("sun", "1", true),
                    demoDates("mon", "2", false),
                    demoDates("tue", "3", true),
                    demoDates("wed", "4", true),
                    demoDates("thu", "5", false),
                    demoDates("fri", "6", true),
                    demoDates("sat", "7", false),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Booked Time',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xff057c82),
                    fontSize: 26.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2,
                children: [
                  doctorTimings("10:00", true),
                  doctorTimings("11:00", true),
                  doctorTimings("12:00", false),
                  doctorTimings("13:00", true),
                  doctorTimings("14:00", false),
                  doctorTimings("15:00", false),

                ],
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar: Container(
        color: const Color(0xffE6F4F1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GNav(
            backgroundColor: const Color(0xffE6F4F1),
            color: const Color(0xff057c82),
            activeColor: const Color(0xff057c82),
            tabBackgroundColor: const Color(0xffE6F4F1),
            gap: 5,
            onTabChange: (indexx) {
              print(indexx);
            },
            padding: const EdgeInsets.all(8),
            tabs: const [
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


  demoDates(String day, String date, bool isSelected) {
    return isSelected ? Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 60,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: const Color(0xff057c82),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  day,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(7),
                child: Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ) : Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        width: 60,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: const Color(0xffE6F4F1),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff057c82),
                blurRadius: 3,
                spreadRadius: 1,
              ),
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                day,
                style: const TextStyle(
                  color: Color(0xff057c82),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(7),
              child: Text(
                date,
                style: const TextStyle(
                  color: Color(0xff057c82),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }

  doctorTimings(String hour, bool isSelected) {
    return isSelected ? Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        decoration: BoxDecoration(
          color: const Color(0xff057c82),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: const Icon(
                Icons.access_time,
                color: Color(0xffE6F4F1),
                size: 18,
              ),
            ),
            const SizedBox(width: 5,),
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: Text(
                hour,
                style: const TextStyle(
                  color: Color(0xffE6F4F1),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),

      ),
    ) : Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        decoration: BoxDecoration(
            color: const Color(0xffE6F4F1),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff057c82),
                blurRadius: 3,
                spreadRadius: 1,
              ),
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: const Icon(
                Icons.access_time,
                color: Color(0xff057c82),
                size: 18,
              ),
            ),
            const SizedBox(width: 5,),
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: Text(
                hour,
                style: const TextStyle(
                  color: Color(0xff057c82),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }



  }




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'consult.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final conrtoller =ScrollController();
int index=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffE6F4F1),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE6F4F1),
        title:Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  margin: EdgeInsets.only(left: 15,top: 10,bottom: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                     'assets/images/avatar1.png',
                      scale: 3,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  'Hi, Ahmad !',
                  style: TextStyle(
                    color: Color(0xff057c82),
                    fontSize:22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            ],
          ),
        ) ,
        actions: [
          Padding(
            padding:  EdgeInsets.only(top: 10.0,right: 15.0),
            child: Icon(Icons.settings ,
              color: Color(0xff057c82),
              size: 30,
            ),
          ),
        ],
      ),

        body: Padding(
          padding: EdgeInsets.fromLTRB(20,10,20,20),
          child: Column(
            children:[ Container(
              child: Stack(
                children:[
                  Container(
                    width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Color(0xff057c82),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Color(0xffDDEFE9),
                            shape: BoxShape.circle
                          ),
                          child: Icon(
                            Icons.star,
                            color: Color(0xff057c82),
                            size: 15,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                'All Specialists in one app',
                              style: TextStyle(
                                color: Color(0xffE6F4F1),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Find your consultant\nand make an appointment with one tap !',
                                  style: TextStyle(
                                    color: Color(0xffE6F4F1),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            ],
                        ),
                      ],
                    ),
                ),
                ]
              ),
            ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                child: Container(
                  margin: EdgeInsets.only(bottom:1,),
                  width: MediaQuery.of(context).size.width,
                  height: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xffDDEFE9),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff057c82),
                          blurRadius: 6,
                          spreadRadius: 3,
                        ),
                      ]
                  ),
                  child: TextFormField(
                    onChanged: (value){},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search ...',
                      hintStyle: TextStyle(
                        color: Color(0xff94B0B2),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size:25 ,
                        color: Color(0xff94B0B2),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                child: Container(
                  child: Text(
                    'Consulting types',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xff057c82),
                      fontSize: 26.0,
                      letterSpacing: 4,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,8,5,5),
                      child: Container(
                      height:20,
                      width: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Column(
                            children: [
                              CircleAvatar(
                              radius:42,
                              backgroundColor: Color(0xffDDEFE9),
                              backgroundImage:AssetImage('assets/images/medicall.png') ,
                            ),
                              TextButton(
                                  onPressed: (){},
                                  child:Text(
                                    'Medical',
                                    style: TextStyle(
                                      color: Color(0xff057c82),
                                      letterSpacing: 2,
                                      fontSize:15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                              ),

                            ]
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffDDEFE9),
                        borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,8,5,5),
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children:[ CircleAvatar(
                              radius:40,
                              backgroundColor: Color(0xffDDEFE9),
                              backgroundImage:AssetImage('assets/images/psychological.png') ,
                            ),
                              TextButton(
                                onPressed: (){},
                                child:Text(
                                  'Psychological',
                                  style: TextStyle(
                                    color: Color(0xff057c82),
                                    letterSpacing: 1,
                                    fontSize:15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]
                          ),

                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffDDEFE9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,8,5,5),
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children:[ CircleAvatar(
                              radius:40 ,
                              backgroundColor: Color(0xffDDEFE9),
                              backgroundImage:AssetImage('assets/images/familial.png') ,
                            ),
                              TextButton(
                                onPressed: (){},
                                child:Text(
                                  'Familial',
                                  style: TextStyle(
                                    color: Color(0xff057c82),
                                    letterSpacing: 2,
                                    fontSize:15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
    ]
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffDDEFE9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,8,5,5),
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children:[ CircleAvatar(
                              radius:40,
                              backgroundColor: Color(0xffDDEFE9),
                              backgroundImage:AssetImage('assets/images/business1.png') ,
                            ),
                              TextButton(
                                onPressed: (){},
                                child:Text(
                                  'Business',
                                  style: TextStyle(
                                    color: Color(0xff057c82),
                                    letterSpacing: 2,
                                    fontSize:15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
    ]
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffDDEFE9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,8,5,5),
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children:[ CircleAvatar(
                              radius:40,
                              backgroundColor: Color(0xffDDEFE9),
                              backgroundImage:AssetImage('assets/images/vocational.png',
                              ) ,
                            ),
                              TextButton(
                                onPressed: (){},
                                child:Text(
                                  'Vocational',
                                  style: TextStyle(
                                    color: Color(0xff057c82),
                                    letterSpacing: 2,
                                    fontSize:15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
    ]
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffDDEFE9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]
            ),
      ),


      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor:Color(0xff057c82) ,
          labelTextStyle:MaterialStateProperty.all(
            TextStyle(fontSize: 14,fontWeight: FontWeight.w300),
          ) ,
        ),
        child: NavigationBar(
          height: 25.0,
          backgroundColor: Color(0xffE6F4F1),
          selectedIndex: index,
          onDestinationSelected: (index)=>
              setState(() {
                this.index= index;
              })
          ,
          destinations: [
            NavigationDestination(icon:Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_outlined),
                label: '',
            ),
            NavigationDestination(icon:Icon(Icons.favorite_border_outlined),
              selectedIcon: Icon(Icons.favorite_border_outlined),
              label: '',
            ),
            NavigationDestination(icon:Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person_outline),
              label: '',
            )
            ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetAvailableTime extends StatefulWidget {
  @override
  State<SetAvailableTime> createState() => _SetAvailableTimeState();
}

class _SetAvailableTimeState extends State<SetAvailableTime> {
  List<String> items=['Available Time:','10 to 12','12 to 14','14 to 16',
    '16 to 18','18 to 20'];

  String? selectedItem='Available Time:';

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE6F4F1),
      appBar: AppBar( leading: const BackButton(color: Color(0xff057c82),),
        backgroundColor: const Color(0xffE6F4F1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Center(
            child: Container(
              height: 100,
              alignment: Alignment.center,
              child: const Text(
                'Set Your Available Time :',
                style: TextStyle(
                  color: Color(0xff057c82),
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
         /*   SizedBox(height:100),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
              child: Expanded(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff057c82)),
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffE6F4F1),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'My Available Time is: ',
                      style: TextStyle(
                          color: Color(0xff057c82),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                      ),
                    ),
                    children: [
                      ListTile(title: Text(
                        'sun from 10 to 12 ',
                        style: TextStyle(
                          color: Color(0xff057c82),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                        onTap: (){},
                      ),
                      ListTile(title: Text(
                        'mon from 10 to 12 ',
                        style: TextStyle(
                          color: Color(0xff057c82),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                        onTap: (){},
                      ),
                      ListTile(title: Text(
                        'tue from 10 to 12 ',
                        style: TextStyle(
                          color: Color(0xff057c82),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                        onTap: (){},
                      ),
                      ListTile(title: Text(
                        'wed from 10 to 12 ',
                        style: TextStyle(
                          color: Color(0xff057c82),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                        onTap: (){},
                      ),
                      ListTile(title: Text(
                        'thu from 10 to 12 ',
                        style: TextStyle(
                          color: Color(0xff057c82),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                        onTap: (){},
                      ),

                    ],
                    onExpansionChanged: (isExpanded){
                      print('Expanded: $isExpanded');
                    },
                  ),
                ),
              ),
            ),*/


            Container(
              height: 60,
             width: double.infinity,
             margin: const EdgeInsets.only(left: 20,right: 20,top:5),
              padding: const EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff057c82)),
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xffE6F4F1),
              ),
              alignment: Alignment.center,
              child:
              DropdownButtonFormField<String>(
                hint:const Text('Available Time:',
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
             SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height:50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xdd057c82),
                  borderRadius: BorderRadius.circular(50),
                ),
                child:  GestureDetector(
                  onTap: (){},
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        color: Color(0xffE3F5EE),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ]
        ),
      ),


    );
  }
}


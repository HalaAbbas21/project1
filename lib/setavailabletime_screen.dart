import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetAvailableTime extends StatefulWidget {
  @override
  State<SetAvailableTime> createState() => _SetAvailableTimeState();
}

class _SetAvailableTimeState extends State<SetAvailableTime> {
  List<String> items=['Available Time:','10','11','12','13',
    '14'];

  String? selectedItem='Available Time:';
  List<String> itemss=['Available Time:','11','12','13',
    '14','15'];

  String? selectedItemm='Available Time:';

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
       
            Container(
              child: const Text(
                'from:',
                style: TextStyle(
                  color: Color(0xff057c82),
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 10,),
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
            const SizedBox(height: 10,),
            Container(
              child: const Text(
                'to:',
                style: TextStyle(
                  color: Color(0xff057c82),
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
             const SizedBox(height: 10,),
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
                value: selectedItemm,
                icon: const Icon(Icons.keyboard_arrow_down),
                items:itemss
                    .map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue){
                  setState(() {
                    selectedItemm=newValue;
                  });
                },
              ),
            ),
             const SizedBox(height:10),
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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation:0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius:20.0 ,
             // backgroundImage: NetworkImage(''),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),

          ],
        ),
        actions: [
           IconButton(onPressed:(){},icon:
           CircleAvatar(
             radius: 15.0,
             backgroundColor: Colors.blue,
             child: Icon(
             Icons.camera_alt,
               size: 16.0,
               color:Colors.white,
          ),
           ),
         ),
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                 Icons.edit,
                  size: 16.0,
                  color:Colors.white,
                ),
              ),),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:[
                  Container(
                  width: 60.0,
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children:[
                          CircleAvatar(

                            radius: 30.0,
                            backgroundColor: Colors.pink[100],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 2.0,
                              end: 2.0,
                            ),
                            child: CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:5.0,
                      ),
                      Text(
                        'Hala Abbas',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children:[
                            CircleAvatar(

                              radius: 30.0,
                              backgroundColor: Colors.pink[100],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text(
                          'Hala Abbas',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:6.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children:[
                            CircleAvatar(

                              radius: 30.0,
                              backgroundColor: Colors.pink[100],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text(
                          'Hala Abbas',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:6.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children:[
                            CircleAvatar(

                              radius: 30.0,
                              backgroundColor: Colors.pink[100],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text(
                          'Hala Abbas',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:6.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children:[
                            CircleAvatar(

                              radius: 30.0,
                              backgroundColor: Colors.pink[100],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text(
                          'Hala Abbas',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:6.0,
                  ),
                  Container(
                    width: 60.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children:[
                            CircleAvatar(

                              radius: 30.0,
                              backgroundColor: Colors.pink[100],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2.0,
                                end: 2.0,
                              ),
                              child: CircleAvatar(
                                radius: 8.0,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height:5.0,
                        ),
                        Text(
                          'Hala Abbas',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
      )
    );
  }
}

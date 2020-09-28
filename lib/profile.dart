import 'package:flutter/material.dart';
import './notifications.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String name = "David";
  List<Notifications> notifications  = [
    Notifications(content: 'Adebayo Apercu sent you a message', date: 'Yesterday'),
    Notifications(content: 'Oladele Tamilore replied your message', date: 'Monday 22 October'),
    Notifications(content: '20 people added your recipe as a favourite', date: 'Friday 19 October'),
  ];

  Widget wrapNotification(notification){
      return Container(
        margin: EdgeInsets.all(5),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              notification.content,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Apercu Pro', 
              ),
            ),
            SizedBox(height: 15),
            Text(
              notification.date,
              style: TextStyle(
                color: Color(0xFFB4C2D3),
                fontSize: 12,
                fontFamily: 'Apercu Pro', 
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20,10, 20, 10),
              child: Divider(
                height: 1 ,
                color: Colors.grey[200]
              ),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 Padding(
                   padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                   child: Text(
                     'Welcom $name',
                     style: TextStyle(
                       fontSize: 20.0,
                       fontFamily: 'Apercu Pro',
                       fontWeight: FontWeight.bold,
                       color: Colors.black
                     ),
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.fromLTRB(0, 20, 20, 15),
                   child:CircleAvatar(
                   backgroundImage: AssetImage('images/Avatar.png'),
                   maxRadius: 25,
                   minRadius: 25,
                  ),
                 )
              ],
            ),

            SizedBox(height: 25),

            Expanded(
              child:  Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200].withOpacity(0.8),
                    spreadRadius: 30,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                   padding: EdgeInsets.fromLTRB(20, 50, 20, 0), 
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: <Widget>[
                      RaisedButton(
                          onPressed: (){
                            print('hh');
                          }, 
                          color: Colors.white,
                          elevation: 10.0,
                          disabledColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                              children: <Widget>[
                                Image.asset('images/Recipes.png'),
                                SizedBox(height: 10),
                                Text('Recipes',
                                  style: TextStyle(
                                    color: Color(0xFF096B91),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                        SizedBox(width: 12),
                        RaisedButton(
                          onPressed: (){
                            print('hh');
                          }, 
                          color: Colors.white,
                          elevation: 10.0,
                          disabledColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                              children: <Widget>[
                                Image.asset('images/messages.png'),
                                SizedBox(height: 10),
                                Text('Chats',
                                  style: TextStyle(
                                    color: Color(0xFF82C6E6),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                        SizedBox(width: 12),
                        RaisedButton(
                          onPressed: (){
                            print('hh');
                          }, 
                          color: Colors.white,
                          elevation: 10.0,
                          disabledColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                              children: <Widget>[
                                Image.asset('images/global.png'),
                                SizedBox(height: 10),
                                Text('Networks',
                                  style: TextStyle(
                                    color: Color(0xFF79C8A6),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                    ]
                  ),
                 ),
                 SizedBox(height: 12),
                 Padding(
                   padding: EdgeInsets.fromLTRB(20, 5, 20, 0), 
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                     children: <Widget>[
                       RaisedButton(
                          onPressed: (){
                            print('hh');
                          }, 
                          color: Colors.white,
                          elevation: 10.0,
                          disabledColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                              children: <Widget>[
                                Image.asset('images/friends.png'),
                                SizedBox(height: 10),
                                Text('Friends',
                                  style: TextStyle(
                                    color: Color(0xFF946222),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                        SizedBox(width: 12),
                        RaisedButton(
                          onPressed: (){
                            print('hh');
                          }, 
                          color: Colors.white,
                          elevation: 10.0,
                          disabledColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                              children: <Widget>[
                                Image.asset('images/love.png'),
                                SizedBox(height: 10),
                                Text('Favourites',
                                  style: TextStyle(
                                    color: Color(0xFFFF3B30),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                        SizedBox(width: 12),
                        RaisedButton(
                          onPressed: (){
                            print('hh');
                          }, 
                          color: Colors.white,
                          elevation: 10.0,
                          padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                              children: <Widget>[
                                Image.asset('images/upload.png'),
                                SizedBox(height: 10),
                                Text('Uploads',
                                  style: TextStyle(
                                    color: Color(0xFFFFBD49),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                    ]
                  ),
                 ),

                 SizedBox(height: 40),

                 Divider(
                   height: 5.0,
                   color: Colors.grey[200],
                 ),

                 Padding(
                   padding: EdgeInsets.fromLTRB(20, 1, 15, 1),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text(
                         'Notifications',
                         style: TextStyle(
                           color: Colors.green,
                           fontSize: 16,
                           fontWeight: FontWeight.bold
                         ),
                       ),
                       
                       FlatButton(
                         onPressed: (){
                           print('Hello');
                         },                         
                         child: Text(
                           'Clear notifications',
                           style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.bold,
                             color: Color(0xFFB4C2D3)
                           ),
                         ),
                       ),
                     ]
                   ),
                 ),

                 Padding(
                   padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                   child: Column(
                      children: notifications.map((e) => wrapNotification(e)).toList(), 
                   ),
                 )
                ]
              ),
            ),
            ),
          ]
        )
      )
    );
  }
}


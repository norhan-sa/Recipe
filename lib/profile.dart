import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String name = "Daviad";

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
                   padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
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
                   padding: EdgeInsets.fromLTRB(0, 15, 20, 10),
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
                   padding: EdgeInsets.fromLTRB(0, 50, 0, 0), 
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: <Widget>[
                      RaisedButton(
                          onPressed: null, 
                          color: Colors.grey,
                          elevation: 20.0,
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

                        RaisedButton(
                          onPressed: null, 
                          color: Colors.grey,
                          elevation: 20.0,
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

                          RaisedButton(
                          onPressed: null, 
                          color: Colors.grey,
                          elevation: 20.0,
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
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: <Widget>[
                      RaisedButton(
                          onPressed: null, 
                          color: Colors.grey,
                          elevation: 20.0,
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
                                    color: Color(0xFF096B91),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),

                        RaisedButton(
                          onPressed: null, 
                          color: Colors.grey,
                          elevation: 20.0,
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
                                    color: Color(0xFF82C6E6),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),

                          RaisedButton(
                          onPressed: null, 
                          color: Colors.grey,
                          elevation: 20.0,
                          disabledColor: Colors.white,
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
                                    color: Color(0xFF79C8A6),
                                    fontSize: 12,
                                  ),
                                ),
                              ]
                            ),
                        ),
                    ]
                  ),
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


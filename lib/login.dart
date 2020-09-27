import 'dart:ui';
import 'package:flutter/material.dart';


 class Login extends StatefulWidget {
   @override
   _LoginState createState() => _LoginState();
 }
 
 class _LoginState extends State<Login> {
   
   Color enable = Colors.green;
   Color disable = Colors.white;
  
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/food.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 9.0 , sigmaY: 9.0), 
              child: Container(
                alignment: Alignment.center,
		            color: Colors.grey.withOpacity(0.1),  
              ),
            ),
          ),
          
          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Welcome to',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(height: 15.0 ),

                              Text(
                                'Recipe Book',
                                style: TextStyle(
                                  fontSize: 36.0,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                          ]
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(45, 0, 0, 5),
                          child: Image.asset('images/Logo.png'),
                        )
                      ]
                    ),
                    SizedBox(height: 65.0),
                    
                    TextField(
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                      ),  
                      obscureText: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0x60808080),
                          hintText: 'ُEmail',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0
                          ),
                          contentPadding: EdgeInsets.fromLTRB(30, 15, 0, 15),
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                          ),
                          borderSide: BorderSide.none,  
                          )
                    ),   
                    ),

                    SizedBox(height: 30.0),
                    
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0,0, 0, 0),
                      child: TextField(
                         style: TextStyle(
                             color: Colors.white,
                         ),  
                         obscureText: true,
                         decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0x60808080),
                              hintText: 'Password',
                              focusedBorder: null,
                              hintStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 14.0,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(30, 18, 0, 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                     Radius.circular(20.0),
                                  ),
                                  borderSide: BorderSide.none,
                              ),
                       ),   
                    ),
                  ),

                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(184, 0, 0, 0) ,
                      child: FlatButton(onPressed: null,
                        child: Text(
                          'forger password?',
                          style: TextStyle(  
                            fontSize: 12,
                            color: Colors.white,  
                       ),
                      ),
                     )
                    ),

                    RaisedButton(
                       onPressed: (){
                         setState(() {
                           enable = Colors.white;
                           disable = Colors.green;
                         });
                       },
                       child: Text('Login',
                          style: TextStyle(
                             fontSize: 18.0,
                             fontWeight: FontWeight.bold,
                             color: enable,
                          ),
                       ),

                       highlightElevation: 8.5,
                       disabledColor: Colors.white,
                       splashColor: disable,
                       color: disable,
                      //  colorBrightness: Brightness.light ,
                       padding: EdgeInsetsDirectional.fromSTEB(130, 13, 130, 13),
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                       ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(120, 15, 0, 0),
                      child: Text(
                        'Login with',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                     
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: RaisedButton(
                            onPressed: null,
                            disabledColor: Color(0xFF3B5999),
                            shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset('images/f.png'), 
                          ),
                        ),

                        SizedBox(width: 30),

                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: RaisedButton(
                            onPressed: null,
                            disabledColor: Colors.white,
                            shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: Image.asset('images/googleIcon.png'), 
                          ),
                       ),
                      ]
                    ), 

                    Padding(
                      padding: EdgeInsets.fromLTRB(150, 5, 0, 5),
                      child: Text('or',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),  

                   RaisedButton(
                       onPressed: null,
                       child: Text('Create an account',
                          style: TextStyle(
                             fontSize: 16.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                          ),
                       ),
                       highlightElevation: 8.5,
                       disabledColor: Colors.green,
                       colorBrightness: Brightness.light ,
                       padding: EdgeInsetsDirectional.fromSTEB(85, 15, 85, 15),
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                       ),
                    ),  
                    
                ]
              ),
             ),
            ),

        ]
      ),
    );
   }
 }
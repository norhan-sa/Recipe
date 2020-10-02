import 'package:flutter/material.dart';
import './users.dart';

class Chats extends StatelessWidget {

  List<Users> users = [
    Users(name: 'Adebayo Apercu' , imagePath: 'images/user1.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Ronke Igboegwu' , imagePath: 'images/user2.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Ekaite Akande' , imagePath: 'images/user3.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Adedunni Nwaneri' , imagePath: 'images/user4.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Adebayo Apercu' , imagePath: 'images/user1.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Ronke Igboegwu' , imagePath: 'images/user2.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Ekaite Akande' , imagePath: 'images/user3.png' , lastMessage: 'A selection of chicken dishes served together ...'),
    Users(name: 'Adedunni Nwaneri' , imagePath: 'images/user4.png' , lastMessage: 'A selection of chicken dishes served together ...'),    
  ];
 
   Widget wrapUser(Users user){
     return Padding(
       padding: EdgeInsetsDirectional.fromSTEB(5, 15, 5, 15),
       child: Material(
        color: Colors.white,
        child: InkWell(
            onTap: (){
              print('hello');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                backgroundImage: AssetImage(user.imagePath),
                maxRadius: 25,
                minRadius: 25,
                ),
                SizedBox(width:10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      user.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      user.lastMessage,
                      style: TextStyle(
                        color: Color(0x99B4C2D3),
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
        ),
      )
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack( 
       children: [ 
        Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
        ), 
        SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //limits the touch area to the button area
                          minWidth: 0, //wraps child's width
                          height: 0,                        
                          child:RaisedButton(
                            onPressed: (){
                              print('hello');
                            },
                            padding: EdgeInsets.all(10),
                            color: Color(0x4DC4C4C4),
                            shape: CircleBorder(),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Chats',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('images/Logo.png'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView.separated(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                    itemBuilder: (BuildContext context, int index){
                      return wrapUser(users[index]);
                    },
                    separatorBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Divider(
                          height: 2,
                          color: Color(0x338894A2),
                        ),
                        );
                    }, 
                    itemCount: users.length,
                  ),
                ),
              ),
            ],
          ),
        ),
       ], 
      ),
   ); 
  }
}
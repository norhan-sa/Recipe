import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import './messages.dart';

class Conversation extends StatelessWidget {

  List<Messages> messages = [
    Messages( user: 'Adebayo Apercu' , message: 'Wow.'),   
    Messages( user: 'Adebayo Apercu' , message: 'So what is going on?'), 
    Messages( user: 'Adebayo Apercu' , message: 'So what is going on?'), 
    Messages( user: 'me' , message: 'A selection of chicken dishes served together on a white table. This is comfort food heaven.'),     
  ];

  Widget wrapMessage(Messages message){
    if( message.user == 'me'){
      return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(18), ),
               color: Color(0x5934A853),
             ),
             padding: EdgeInsets.all(10),
             margin: EdgeInsets.fromLTRB(20, 5, 15, 5),
             child: Flexible(
                 child: Container(
                   child: Text(
                    message.message,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                 ),
               ),
             ),
            ),
          ],
        );


    }else{
      return Padding(
        padding: EdgeInsets.fromLTRB(15, 5, 20, 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(18), ),
               color: Color(0x59E5E6EA),
             ),
             child: Padding(
               padding: EdgeInsets.all(10),
               child: Text(
                message.message,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
               ),
             ),
            ),
          ],
        ),
      );


    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        'Adebayo Apercu',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz,
                       size: 30,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: Color(0x668894A2),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: ListView( 
                      children: messages.map((e) => wrapMessage(e)).toList(),
                    ),
                  ),
                ),
                // Row(
                //   children: <Widget>[
                //     TextField(
                //       style: TextStyle(
                //         color: Colors.black,
                //         fontSize: 14,
                //       ),
                //       decoration: InputDecoration(
                //         filled: true,
                //         fillColor: Colors.white,
                //         hintText: 'Type a message...',
                //         hintStyle: TextStyle(
                //           color: Color(0XFF8894A2),
                //           fontSize: 14
                //         ),
                //         contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                //         suffixIcon: Icon(
                //           Icons.search,
                //           color: Color(0XFF8894A2),
                //         ),
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(18),
                //         ),
                //       ),
                //     ),
                //     ButtonTheme(
                //       materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //limits the touch area to the button area
                //       minWidth: 0, //wraps child's width
                //       height: 0,                        
                //       child:RaisedButton(
                //         onPressed: (){
                //           print('hello');
                //         },
                //         padding: EdgeInsets.all(10),
                //         color: Color(0xFF34A853),
                //         shape: CircleBorder(),
                //         child: Icon(
                //           Icons.arrow_forward,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
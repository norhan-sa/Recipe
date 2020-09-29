import 'package:flutter/material.dart';

 class Search extends StatefulWidget {
   @override
   _SearchState createState() => _SearchState();
 }
 
 class _SearchState extends State<Search> {

   String title = 'Search by Recipe';
   String buttonText = 'Swipe to search by ingredients';
   String hint = 'What recipe are you looking for?';
   bool isRecipe = true;
   String imagePath = 'images/recipebg.png';
   List<String> settings = [
    'My search history',
    'My favourite recipes',
    'Thai Chicken Balls',
    'Honey Mustard Pork Chops',
    'Salsa Chicken Rice Casserole',
    'Banana Cinnamon Roll Casserole',
     'My search history',
    'My favourite recipes',
    'Thai Chicken Balls',
    'Honey Mustard Pork Chops',
    'Salsa Chicken Rice Casserole',
    'Banana Cinnamon Roll Casserole',   
   ];

   Widget wrapSetting(String setting){
     return Material(
            child: InkWell(
            onTap: (){
              print('Hello');
            },
            splashColor: Colors.grey,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0x338894A2),
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      setting,
                      style: TextStyle(
                        color: Color(0xCC8894A2),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Color(0x998894A2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
       children: [
         //***** BACKGROUND *****/
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(imagePath),
            ],
          ),
          //***** CONTENT *****/
          Column(
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ButtonTheme(
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //limits the touch area to the button area
                            minWidth: 0, //wraps child's width
                            height: 0,
                            child: RaisedButton(
                              onPressed: (){
                                print('here we are');
                              },
                              color: Color(0x4DC4C4C4),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed:(){
                              if(isRecipe == true){
                                setState(() {
                                  title = 'Search by Ingredients';
                                  hint = 'What ingredient are you looking for?';
                                  buttonText = 'Swipe to search by recipe';
                                  imagePath = 'images/ingrediantspg.png';
                                  isRecipe = false;
                                });
                              }else{
                                setState(() {
                                  title = 'Search by Recipe';
                                  buttonText = 'Swipe to search by ingredients';
                                  hint = 'What recipe are you looking for?';
                                  imagePath = 'images/recipebg.png';
                                  isRecipe = true; 
                                });                                 
                              }
                            },
                            color: Color(0xB3FFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: EdgeInsets.fromLTRB(5, 0, 3, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  buttonText,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_right),
                              ],
                            ), 
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                         filled: true,
                         fillColor: Colors.white,
                         hintText: hint,
                         hintStyle: TextStyle(
                           color: Color(0XFF8894A2),
                           fontSize: 14
                         ),
                         contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                         suffixIcon: Icon(
                           Icons.search,
                           color: Color(0XFF8894A2),
                         ),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(18),
                         ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    ), 
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
                    child: ListView(
                      children: settings.map((e) => wrapSetting(e)).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
       ],
      ),
     );
   }

 }  
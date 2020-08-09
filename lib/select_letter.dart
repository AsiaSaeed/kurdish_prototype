import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/FourthPage.dart';
import 'package:mainpage/ThreePage.dart';
import 'package:mainpage/baloon.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';
void main() => runApp(Select_letter());
class Select_letter extends StatelessWidget {
  // This widget is the root of your application.



  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('right.m4a');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  static TapGestureRecognizer _recognizer;
  static Color color = Colors.black;
  static Color color1 = Colors.black;
  static Color color2 = Colors.black;
  static Color color3 = Colors.black;
  static Color color4 = Colors.black;
  String word = "";
  String letter = "";
  String firstPart = "";
  String remainPart = "";
  int ff = 0;
  int rf = 0;
  double textSize = 40;
  RichText richText;
  void changeColor(int numOfWord) {
    switch (numOfWord) {
      case 1:
        setState(() {
          color1 = Colors.red;
          color = color1;
        });
        break;
      case 2:
        setState(() {
          color2 = Colors.red;
          color = color2;
        });
        break;
      case 3:
        setState(() {
          color3 = Colors.red;
          color = color3;
        });
        break;
      case 4:
        setState(() {
          color4 = Colors.red;
          color = color4;
        });
        break;
    }
  }
  Widget rich(String cWord, String cLetter, int numOfWord) {
    switch (numOfWord) {
      case 1:
        color = color1;
        break;
      case 2:
        color = color2;
        break;
      case 3:
        color = color3;
        break;
      case 4:
        color = color4;
        break;
    }
    word = cWord;
    letter = cLetter;
    if (word.startsWith(letter)) {
      richText = RichText(
          text: TextSpan(
            children: <TextSpan>[
              new TextSpan(
                  text: letter,
                  style: (TextStyle(color: color, fontSize: textSize)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      changeColor(numOfWord);
                      playSound();
                    }),
              new TextSpan(
                text: word.substring(1, word.length),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: textSize,
                ),
              ),
            ],
          ));
    } else if (word.endsWith(letter)) {
      richText = RichText(
        text: TextSpan(
          children: <TextSpan>[
            new TextSpan(
                text: word.substring(0, word.length - 1),
                style: TextStyle(color: Colors.black, fontSize: textSize)),
            new TextSpan(
                text: letter,
                style: (TextStyle(color: color, fontSize: textSize)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    changeColor(numOfWord);
                    playSound();
                  }),
          ],
        ),
      );
    } else if (!word.startsWith(letter) &&
        !word.endsWith(letter) &&
        word.contains(letter)) {
      for (int i = 0; i < word.length; i++) {
        if (i < word.indexOf(letter) && ff == 0) {
          firstPart = firstPart + word[i];
          if (i == word.indexOf(letter) - 1) ff = 1;
        } else if (i > word.indexOf(letter) && rf == 0) {
          remainPart = remainPart + word[i];
          if (i == word.length - 1) rf = 1;
        }
      }
      richText = RichText(
        text: TextSpan(
          children: <TextSpan>[
            new TextSpan(
                text: firstPart,
                style: TextStyle(color: Colors.black, fontSize: textSize)),
            new TextSpan(
                text: letter,
                style: (TextStyle(color: color, fontSize: textSize)),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    changeColor(numOfWord);
                    playSound();
                  }),
            new TextSpan(
              text: remainPart,
              style: (TextStyle(color: Colors.black, fontSize: textSize)),
            ),
          ],
        ),
      );
    } else {
      richText = RichText(
        text: TextSpan(
          text: word,
          style: (TextStyle(color: Colors.black, fontSize: textSize)),
        ),
      );
    }
    return richText;
  }
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(

      body: Center(
        child: SafeArea(
          child: Column(
            children: <Widget>[

              Container(
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topCenter,
                width: wp(100),


                child: Row(children: <Widget>[Container(

                  decoration: new BoxDecoration(
                      color: new Color(0xFF55c6f7)
                  ),
                  width: wp(100),
                  child: Container(


                    child: Row(children: <Widget>[

                      FlatButton(

                        onPressed: () {
                          //  playSound();
                        },
                        child: AvatarGlow(
                          glowColor: Colors.white,

                          endRadius: wp(7),
                          duration: Duration(milliseconds: 2000),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 100),
                          child: Material(
                            elevation: wp(8),
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset(
                                'assets/sound.png',
                                height: wp(5),
                              ),
                              radius: wp(4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: wp(56),
                      ),
                      new Container(
                        // margin: EdgeInsets.fromLTRB(wp(55.0), hp(2), wp(0), hp(2)),
                        //alignment: Alignment.topRight,
                        child: FlatButton(
                          child:new Container(
                            child: Image.asset('assets/homepage.png',width: wp(9),height: hp(9),),
                          ),
                          onPressed: () {
                            //  playSound();
                          },
                        ),),


                    ],),
                  ),

                )],),
              ),





              SizedBox(height: hp(2),),
              RatingBar(
                initialRating: 6,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 11,
                ratingWidget: RatingWidget(
                  full:Image.asset('assets/nutscl.png',width: 5,height: 5,) ,

                  empty:Image.asset('assets/nutsc.png',width: 5,height: 5,) ,
                ),
                itemPadding: EdgeInsets.all(0),
                itemSize: 27,
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            Container(
              width: wp(53),
              height: hp(5),
              margin:EdgeInsets.fromLTRB(wp(41), hp(2), 0, 0) ,
              decoration: BoxDecoration(

                gradient: LinearGradient(
                    colors: [
                      Color(0xffffffff),
                      Color(0xffffffff),
                      //Color(0xffFCCEA0),
                      Color(0xffFCCEB3),
                      Color(0xffFAB890),


                    ]
                ),
              ),

              child:Row(children: <Widget>[



                Text(' بخەرە ناو چەماوەیەک',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
                Text('(',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

                Text('د',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,color: Colors.red),),


                Text(')',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

              ],)
            ),

            Column(
              children: <Widget>[
                Container(


                  margin: EdgeInsets.fromLTRB(0, hp(7), 0, 0),child:
                Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      InkWell(


                        child: RawMaterialButton(
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.fromLTRB(wp(28),hp(0),wp(15),hp(0)),

                          child: Image.asset('assets/sound.png',width: wp(8),height:hp(8),),
                          onPressed: () {

                          },
                        ),
                      ),
                      rich('دەرگا', 'د', 1),

                    ],
                  ),
                  SizedBox(

                    width: wp(3),
                    height: hp(3),
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(


                        child: RawMaterialButton(
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.fromLTRB(wp(28),hp(0),wp(12),hp(0)),

                          child: Image.asset('assets/sound.png',width: wp(8),height:hp(8),),
                          onPressed: () {

                          },
                        ),
                      ),
                      rich('پەنجەرە', 'د', 2),
                    ],
                  ),
                  SizedBox(

                    width: wp(3),
                    height: hp(3),
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(


                        child: RawMaterialButton(
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.fromLTRB(wp(28),hp(0),wp(15),hp(0)),

                          child: Image.asset('assets/sound.png',width: wp(8),height:hp(8),),
                          onPressed: () {

                          },
                        ),
                      ),
                      rich('دیوار', 'د', 3),
                    ],
                  ),
                  SizedBox(

                    width: wp(3),
                    height: hp(3),
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(


                        child: RawMaterialButton(
                          constraints: BoxConstraints(),
                          padding: EdgeInsets.fromLTRB(wp(28),hp(0),wp(15),hp(0)),

                          child: Image.asset('assets/sound.png',width: wp(8),height:hp(8),),
                          onPressed: () {

                          },
                        ),
                      ),
                      rich('پەردە', 'د', 4),
                    ],
                  ),

                ],),)
              ],
            ),
              Row(children: <Widget>[Container(
                decoration: new BoxDecoration(
                    color:Colors.transparent),
                child: Row(children: <Widget>[
                  new Container(
                    margin: EdgeInsets.fromLTRB(wp(13.0), hp(9), wp(30),hp( 0)),
                    //alignment: Alignment.bottomRight,
                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreePage()));
                      },
                    ),),
                  new Container(
                    margin: EdgeInsets.fromLTRB(wp(0),hp( 9),wp( 0),hp( 0)),
                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage()));
                      },
                    ),
                  ),
                ],),

              )],),
            ],
          ),
        ),
      ),
    );
  }
}
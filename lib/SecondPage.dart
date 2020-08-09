import 'package:audioplayers/audio_cache.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mainpage/baloon.dart';
import 'package:mainpage/drag.dart';
import 'letterList.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_screen/responsive_screen.dart';
class SecondPage extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeButtonBackground(),
    );
  }
}
class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }
}

class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> colors1 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];
  int currentIndex1 = 0;
  List<Color> colors2 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex2 = 0;
  List<Color> colors3 = [ //Get list of colors
    Colors.white,
    Colors.green,
  ];

  int currentIndex3 = 0;
  List<Color> colors4 = [ //Get list of colors
    Colors.white,
    Colors.redAccent,
  ];

  int currentIndex4 = 0;

  _onChanged() { //update with a new color when the user taps button


    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }

  void home() {

  }
  void right() {

  }
  void left() {

  }
  void sound() {
    final player = AudioCache();
    player.play('d.m4a');
  }
  void   SoundParda() {
    final player = AudioCache();
    player.play('parda5.m4a');
  }
  void   SoundDarga() {
    final player = AudioCache();
    player.play('darga3.m4a');
  }
  void   Soundpanjara() {
    final player = AudioCache();
    player.play('panjara4.m4a');
  }
  void   SoundAmad() {
    final player = AudioCache();
    player.play('amad1.m4a');

  }
  ButtonParda() {
    int colorCount1 = colors1.length;

    setState(() {
      if (currentIndex1 == colorCount1 - 1) {
        currentIndex1 = 0;
      } else {
        currentIndex1 += 1;
      }
      playSound();
    });
  }
  panjara() {
    int colorCount4 = colors4.length;

    setState(() {
      if (currentIndex4 == colorCount4 - 1) {
        currentIndex4 = 0;
      } else {
        currentIndex4 += 1;
      }
playwrong();
    });
  }
  amad() {
    int colorCount3 = colors3.length;

    setState(() {
      if (currentIndex3 == colorCount3 - 1) {
        currentIndex3 = 0;
      } else {
        currentIndex3 += 1;
      }
      playSound();
    });
  }
  ButtonDarga() {
    int colorCount2 = colors2.length;

    setState(() {
      if (currentIndex2 == colorCount2 - 1) {
        currentIndex2 = 0;
      } else {
        currentIndex2 += 1;
      }
      playSound();
    });
  }
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
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
                  initialRating: 9,
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
                    width: wp(30),
                    height: hp(4),
                    margin:EdgeInsets.fromLTRB(wp(65),hp(1), 0, hp(1)) ,
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



                      Text('ناوی وێنەکان بڵێ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 15),),




                    ],)
                ),

                Container(
                    width: wp(80),
                    height: hp(4),
                    margin:EdgeInsets.fromLTRB(wp(15), 0, 0, hp(1)) ,
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



                      Text('ی تێدایە،ڕەنگ بکە',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),),
                      Text('/',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),),

                      Text('د',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14,color: Colors.red),),


                      Text('/بازنەی ژێر ئەم وێنانەی دەنگی ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),),

                    ],)
                ),
                Column(
                  children: <Widget>[
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: hp(28),
                          width: wp(50),
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/parda.png',width: wp(35),height:hp( 18),),
                                ),

                                Container(
                                  width: wp(48),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                      margin: EdgeInsets.fromLTRB(wp(10), hp(0), wp(0), hp(0)),



                                        child: Container(
                                          height:hp( 5),
                                          width: wp(10),
                                          margin: EdgeInsets.fromLTRB(wp(4), hp(0), wp(0), hp(0)),
                                          child: FlatButton(
                                            onPressed: ButtonParda,

                                            color: colors1[currentIndex1], //specify background color  of button from our list of colors
                                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0),side: BorderSide(
                                              color: Colors.blue,

                                            ),),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        //margin: EdgeInsets.fromLTRB(wp(0), hp(0), wp(0),hp(0) ),

                                        child: RawMaterialButton(
                                          constraints: BoxConstraints(),
                                          padding: EdgeInsets.all(0),

                                          child: Image.asset('assets/sound.png',width: wp(6),height:hp( 6),),
                                          onPressed: () {
                                            SoundParda();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: hp(28),
                          width: wp(50),
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/darga.png',width: wp(35),height:hp( 18),),
                                ),

                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(wp(14), hp(0), wp(0), hp(0)),
                                      height:hp( 5),
                                      width: wp(10),
                                      child: FlatButton(
                                        onPressed: ButtonDarga,
                                        color: colors2[currentIndex2], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(
                                          color: Colors.blue,

                                        ),),
                                      ),
                                    ),
                                    InkWell(
                                      //margin: EdgeInsets.fromLTRB(wp(0), hp(0), wp(0),hp(0) ),

                                      child: RawMaterialButton(
                                        constraints: BoxConstraints(),
                                        padding: EdgeInsets.all(0),

                                        child: Image.asset('assets/sound.png',width: wp(6),height:hp( 6),),
                                        onPressed: () {
                                          SoundParda();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: hp(28),
                          width: wp(50),
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/amadd.png',width: wp(35),height:hp( 18),),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(wp(14), hp(0), wp(0), hp(0)),
                                      height:hp( 5),
                                      width: wp(10),
                                      child: FlatButton(
                                        onPressed: amad,

                                        color: colors3[currentIndex3], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(
                                          color: Colors.blue,

                                        ),),
                                      ),
                                    ),
                                    InkWell(
                                      //margin: EdgeInsets.fromLTRB(wp(0), hp(0), wp(0),hp(0) ),

                                      child: RawMaterialButton(
                                        constraints: BoxConstraints(),
                                        padding: EdgeInsets.all(0),

                                        child: Image.asset('assets/sound.png',width: wp(6),height:hp( 6),),
                                        onPressed: () {
                                          SoundParda();
                                        },
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: hp(28),
                          width: wp(50),
                          child:   Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child:  Image.asset('assets/panjara.png',width: wp(30),height:hp( 18),),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(wp(14), hp(0), wp(0), hp(0)),
                                      height:hp( 5),
                                      width: wp(10),
                                      child: FlatButton(
                                        onPressed: panjara,

                                        color: colors4[currentIndex4], //specify background color  of button from our list of colors
                                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),side: BorderSide(
                                          color: Colors.blue,

                                        ),),
                                      ),
                                    ),
                                    InkWell(
                                      //margin: EdgeInsets.fromLTRB(wp(0), hp(0), wp(0),hp(0) ),

                                      child: RawMaterialButton(
                                        constraints: BoxConstraints(),
                                        padding: EdgeInsets.all(0),

                                        child: Image.asset('assets/sound.png',width: wp(6),height:hp( 6),),
                                        onPressed: () {
                                          SoundParda();
                                        },
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.fromLTRB(wp(13.0), hp(2), wp(30),hp( 0)),
                      //alignment: Alignment.bottomRight,
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Drag()));
                        },
                      ),),
                    new Container(
                      //alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(wp(0),hp( 2),wp( 0),hp( 0)),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));
                        },
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:mainpage/letterList.dart';
import 'package:mainpage/nmrakan.dart';
import 'package:pimp_my_button/pimp_my_button.dart';
import 'Chalaki4.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';
class FivePage extends StatelessWidget {
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
    Colors.green,
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

      currentIndex1 = 1;

    });
  }
  ButtonAmad() {
    int colorCount4 = colors4.length;

    setState(() {
      if (currentIndex4 == colorCount4 - 1) {
        currentIndex4 = 0;
      } else {
        currentIndex4 += 1;
      }
    });
  }
  ButtonPanjara() {
    int colorCount3 = colors3.length;

    setState(() {
      if (currentIndex3 == colorCount3 - 1) {
        currentIndex3 = 0;
      } else {
        currentIndex3 += 1;
      }
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
                  initialRating: 0,
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
                  margin:EdgeInsets.fromLTRB(wp(5), hp(1),0, 0) ,
                  child: Text('چالاکی (٥)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Color(0xff0A7478 ),),),),



                Container(
                    margin:EdgeInsets.fromLTRB(wp(30), hp(1),0, hp(1)) ,
                    child: Image.asset('assets/rastwhala.PNG',width: wp(60),height: hp(3),)),


                Column(
                  children: <Widget>[
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
                                  child:  Image.asset('assets/rast1.png',width: wp(35),height:hp( 18),),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/true.png',width: wp(8),height: hp(8),),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            }
                                            ,);
                                        },
                                      ),
                                    ),

                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/false.png',width: wp(8),height: hp(8),),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),
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
                                  child:  Image.asset('assets/hala1.png',width: wp(35),height:hp( 18),),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/true.png',width: wp(8),height: hp(8),),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),
                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/false.png',width: wp(8),height: hp(8),),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            },);
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
                                  child:  Image.asset('assets/rast2.png',width: wp(35),height:hp( 18),),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/true.png',width: wp(8),height: hp(8),),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            },);
                                        },
                                      ),
                                    ),

                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/false.png',width: wp(8),height: hp(8),),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),
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
                                  child:  Image.asset('assets/rast2.png',width: wp(35),height:hp( 18),),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:  FlatButton(
                                        child: Image.asset('assets/true.png',width: wp(8),height: hp(8),),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          SoundDarga();
                                        },
                                      ),),

                                    Expanded(
                                      child:  PimpedButton(
                                        particle: DemoParticle(),
                                        pimpedWidgetBuilder: (context, controller) {
                                          return FlatButton( child: Image.asset('assets/false.png',width: wp(8),height: hp(8),),
                                            shape: CircleBorder(),
                                            onPressed: () {
                                              controller.forward(from: 0.0);
                                              SoundDarga();
                                            },);
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
                    new  Container(
                      margin: EdgeInsets.fromLTRB(wp(13.0), hp(2), wp(30),hp( 0)),
                      //alignment: Alignment.bottomRight,
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                        ),
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Nmrakan()));
                        },
                      ),),
                    new  Container(
                      //alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(wp(0),hp( 2),wp( 0),hp( 0)),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SixPage()));
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
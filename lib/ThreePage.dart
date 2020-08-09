import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/painting.dart';
import 'package:mainpage/select_letter.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ThreePage extends StatelessWidget {
  void home() {

  }
  void right() {

  }
  void left() {

  }
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('d$soundNumber.m4a');
  }
  void playSound1() {
    final player = AudioCache();
    player.play('d.m4a');
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
                  initialRating: 5,
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
                    width: wp(28),
                    height: hp(5),
                    margin:EdgeInsets.fromLTRB(wp(65), hp(3), 0, 0) ,
                    decoration: BoxDecoration(

                      gradient: LinearGradient(
                          colors: [
                            Color(0xffffffff),

                            //Color(0xffFCCEA0),
                            Color(0xffFCCEB3),
                            Color(0xffFAB890),


                          ]
                      ),
                    ),

                    child:Row(children: <Widget>[



                      Text('دەڵێم',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20),),







                    ],)
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(wp(23), hp(7), wp(20), 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: wp(12),height: hp(12),),
                        ),
                        onPressed: () {
                          playSound(1);
                        },
                      ),),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, hp(7), 0, 0),
                        child:Text('د',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 45,
                              fontStyle: FontStyle.italic
                          ),)

                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(wp(23), hp(3), wp(20), 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: wp(12),height: hp(12),),
                        ),
                        onPressed: () {
                          playSound(1);
                        },
                      ),),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, hp(3), 0, 0),
                        child:Text('د',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 45,
                              fontStyle: FontStyle.italic
                          ),)

                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(wp(23), hp(3), wp(20), 0.0),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/sound.png',width: wp(12),height: hp(12),),
                        ),
                        onPressed: () {
                          playSound(1);
                        },
                      ),),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, hp(3), 0, 0),
                        child:Text('د',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 45,
                              fontStyle: FontStyle.italic
                          ),)

                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.fromLTRB(wp(13.0), hp(10), wp(30),hp( 0)),
                      //alignment: Alignment.bottomRight,
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                        ),
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Painting()));
                        },
                      ),),
                    new Container(
                      margin: EdgeInsets.fromLTRB(wp(0),hp( 10),wp( 0),hp( 0)),
                      child: FlatButton(
                        child:new Container(
                          child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                        ),
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Select_letter()));
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
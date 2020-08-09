

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/painting.dart';
import 'package:mainpage/select.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() => runApp(Baloon());

class Baloon extends StatelessWidget {
  get child => null;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note1.m4a');
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home:  ChangeButtonBackground(),
    );
  }

}

class ChangeButtonBackground extends StatefulWidget {
  @override
  ChangeButtonBackgroundState createState() {
    return new ChangeButtonBackgroundState();
  }

}
void playSound() {
  final player = AudioCache();
  player.play('right.mp3');
}

void playwrong() {
  final player = AudioCache();
  player.play('wrong.mp3');
}
class ChangeButtonBackgroundState extends State<ChangeButtonBackground> {
  List<Color> _colors1= [
    Colors.transparent,//Get list of colors
    Colors.green,

  ];

  List<Color> _colors2= [
    Colors.transparent,//Get list of colors
    Colors.green,


  ];
  void playSoundd() {
    final player = AudioCache();
    player.play('right.mp3');
  }
  int _currentIndex1 = 0;

  _onChanged1() { //update with a new color when the user taps button
    playSoundd();

    setState(() {

      _currentIndex1 =1;


    });


    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }
  int  _currentIndex2 = 0;
  _onChanged2() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex2 = 1;
    });
  }
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(

      body:


      SafeArea(
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
                initialRating: 3,
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
                margin:EdgeInsets.fromLTRB(wp(10), wp(2),0, 0) ,
                child: Text('چالاکی (٢)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Color(0xff0A7478 ),),),),


              Container(
                  width: wp(50),
                  height: hp(7),
                  margin:EdgeInsets.fromLTRB(wp(35), hp(2), 0, hp(4)) ,
                  decoration: BoxDecoration(

                    gradient: LinearGradient(
                        colors: [
                          Color(0xffF3FFFF),
                          Color(0xffF3FFFF),
                          //Color(0xffFCCEA0),



                        ]
                    ),
                  ),

                  child:Row(children: <Widget>[



                    Container(
                        margin: EdgeInsets.fromLTRB(0,0, 0, 10),
                        child: Text(' ڕەنگەکانیان ببینەو بڵێ ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),)),


                  ],)
              ),


              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(wp(1),hp(2), 0, 0),
                  width: wp(100),
                  height: hp(34),
                  color: Color(0xffB3E9F9),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: hp(1),
                        right: wp(1),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/bp.png',width: wp(25),
                              height: hp(30),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top: hp(14),
                        right:wp(15),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/bm.png',width: wp(12),
                              height: hp(18),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top: hp(5),
                        right:wp(25),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/by.png',width: wp(24),
                            height: hp(27),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top: hp(16),
                        right:wp(37),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/bgreen.png',width: wp(17),
                              height: hp(18),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top: hp(3),
                        right:wp(47),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/br.png',width: wp(22),
                              height: hp(25),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top: hp(17),
                        right:hp(32),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/bbn.png',width: wp(15),
                              height: hp(20),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top:hp(0),
                        right:hp(37),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/bg.png',width: wp(20),
                              height: hp(22),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                      Positioned(
                        top:hp(15),
                        right:wp(74),
                        child:FlatButton(
                          child: Container(

                            child: Image.asset('assets/bo.png',width: wp(9),
                              height: hp(18),),
                          ),
                          onPressed: () {
                            playwrong();
                          },
                        ),


                      ),
                    ],
                  ),
                ),
              ),
              Row(children: <Widget>[Container(
                decoration: new BoxDecoration(
                    color:Colors.transparent),
                child: Row(children: <Widget>[
                  new Container(
                    margin: EdgeInsets.fromLTRB(wp(13.0), hp(13), wp(30),hp( 0)),
                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/leftt.png',width: wp(14),height: hp(14),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Select()));
                      },
                    ),),
                  new Container(
                    margin: EdgeInsets.fromLTRB(0, hp(13), 0, 0.0),
                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/rightt.png',width: wp(14),height:hp(14),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Painting()));
                      },
                    ),
                  ),
                ],),

              )],),

            ]),
      ),);


  }




}

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/FourthPage.dart';
import 'package:mainpage/SecondPage.dart';
import 'package:responsive_screen/responsive_screen.dart';


class Drag extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'PressStart',
      ),
      home: DragDrop(),
    );
  }
}

class DragDrop extends StatefulWidget {
  DragDrop({Key key}) : super(key: key);

  createState() => DragDropState();
}

class DragDropState extends State<DragDrop> {
  /// Map to keep track of score
  final Map<String, bool> score = {};

  /// Choices for game
  final Map choices = {
    'د': BoxShape.circle,
    'ئامە': BoxShape.rectangle,
  };

  // Random seed to shuffle order of items.
  int seed = 0;

  @override
  Widget build(BuildContext context) {

    final wp = Screen(context).wp; //specify wp
  final hp = Screen(context).hp;
    return Scaffold(/*
      appBar: AppBar(
          title: Text('Score ${score.length} / 2'),
          backgroundColor: Colors.blue),
   floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),*/




      body: SafeArea(
        child: Column(children: <Widget>[

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
            initialRating: 8,
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

SizedBox(
  height: hp((3)),
),
          Row(
            children: <Widget>[
              SizedBox(width: wp(43),),
              Container(
                  width: wp(55),
                  height: hp(7),
                 // margin:EdgeInsets.fromLTRB(wp(54), hp(5), wp(1),wp( 0)) ,
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


                    Text(' (   ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,) , textAlign: TextAlign.right,),

                    Text('ڕوتەڵکردن',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18), textAlign: TextAlign.right,),
                    Text('  )  ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18), textAlign: TextAlign.right,),

                    Text('جیاکردنەوە ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,), textAlign: TextAlign.right,),




                  ],)
              ),
            ],
          ),
          Column(
              children: <Widget>[


                Column(
                  children: <Widget>[
                    Row(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: wp(100),


                          margin: EdgeInsets.fromLTRB(wp(0),hp(5),wp( 0),hp( 0)),
                          padding: EdgeInsets.all(wp(9.0)),
                          decoration: new BoxDecoration(

                              color:  Color(0xFFFFE5D0) ),

                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:
                                choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                                  ..shuffle(Random(seed)),
                              ),

                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: choices.keys.map((emoji) {
                                    return Draggable<String>(
                                      data: emoji,
                                      child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                                      feedback: Emoji(emoji: emoji),

                                    );
                                  }).toList()),

                            ],
                          ),
                        ),],),


                    Container(
                      width: wp(100),
                      height: hp(7),

                      margin: EdgeInsets.fromLTRB(wp(0),hp(0),wp( 0),hp( 0)),

                      decoration: new BoxDecoration(

                          color:  Color(0xFFFFE5D0) ),

                      child:Row(children: <Widget>[

                        InkWell(

                          child: RawMaterialButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.fromLTRB(wp(18),hp(0),0,hp(0)),

                            child: Image.asset('assets/sound.png',width: wp(7),height:hp( 7),),
                            onPressed: () {

                            },
                          ),
                        ),
                        InkWell(


                          child: RawMaterialButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.fromLTRB(wp(10),hp(0),0,hp(0)),

                            child: Image.asset('assets/sound.png',width: wp(7),height:hp( 7),),
                            onPressed: () {

                            },
                          ),
                        ),


                      ],),),


                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        height: hp(20),
                        width: wp(60),
                        margin: EdgeInsets.fromLTRB(70,0, 0, 0),
                        child:  Image.asset('assets/rr.png')
                    )
                  ],
                )
              ]),

          Row(children: <Widget>[Container(
            decoration: new BoxDecoration(
                color:Colors.transparent),
            alignment: Alignment.center,
            child: Row(children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(wp(13.0), hp(7), wp(30),hp( 0)),
                //alignment: Alignment.bottomRight,
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FourthPage()));
                  },
                ),),
              new Container(
                //alignment: Alignment.bottomLeft,
                margin: EdgeInsets.fromLTRB(wp(0),hp( 7),wp( 0),hp( 0)),
                child: FlatButton(
                  child:new Container(
                    child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                  },
                ),
              ),
            ],),

          )],),
        ]),
      ) ,
    );
  }
  void playSoundd() {
    final player = AudioCache();
    player.play('wrong.mp3');
  }
  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {

          return Container(
            color: Colors.transparent,
            child: Text('ڕاستە'),
            alignment: Alignment.center,
            height: 80,
            width: 80,
          );
        } else {
          if (choices[emoji] == BoxShape.circle) {
            return Container(  height: 50, width: 40,child:Text('د',style: TextStyle( fontSize: 35,color: Color(0xFF000000).withOpacity(0.2))),  decoration: new BoxDecoration( color:Colors.transparent,

              shape:choices[emoji] ,
            ),);}
          else{
            return Container( height: 50, width:80,child:Text('ئامە',style: TextStyle( fontSize: 35,color: Color(0xFF000000).withOpacity(0.2))), decoration: new BoxDecoration(color:Colors.transparent,

                shape:choices[emoji] ),);
          }
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          plyr.play('right.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        padding: EdgeInsets.all(5),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),
    );
  }
}

AudioCache plyr = AudioCache();
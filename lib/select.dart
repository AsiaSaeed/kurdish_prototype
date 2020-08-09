
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/Chalaki4.dart';
import 'package:mainpage/baloon.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';



class Select extends StatelessWidget {
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
  player.play('buzzer.mp3');
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
  int  _currentIndex3 = 0;
  _onChanged3() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex3 = 1;
    });
  }
  int  _currentIndex4 = 0;
  _onChanged4() {
    //update with a new color when the user taps button
    playSoundd();

    setState(() {
      _currentIndex4 = 1;
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
                initialRating: 2,
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
                child: Text('چالاکی (٣)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 22,color: Color(0xff0A7478 ),),),),
              Container(
                  width: wp(60),
                  height: hp(4),
                  margin:EdgeInsets.fromLTRB(wp(35), hp(5), 0, hp(4)) ,
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



                    Text('بدۆزەرەوە، نیشانەی بکە ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
                    Text('(',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

                    Text('د',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18,color: Colors.red),),


                    Text(')',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),

                  ],)
              ),
              SafeArea(child: Row(

                  children: <Widget>[


                    Container( margin: EdgeInsets.fromLTRB(wp(4),0, 0, hp(0)),
                      constraints: BoxConstraints(

                          maxHeight: hp(45),
                          maxWidth:wp(90),
                          minWidth: wp(80),
                          minHeight: hp(30),
                      ),
                      decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/w4ch3.png"),fit: BoxFit.fill
                        ),
                      ),
                      child:
                      Stack(
                          children: [

                            Positioned(
                              top: hp(8),
                              left: wp(26),
                              child:FlatButton(
                                child: Text('غ',style: TextStyle( fontSize: 28)),
                                shape:CircleBorder(),
                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                              ),

                            ),
                            Positioned(
                              top: hp(28),
                              right: wp(20),
                              child:FlatButton(
                                child: Text('ح',style: TextStyle( fontSize: 28)),
                                shape:CircleBorder(),
                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                              ),
                            ),
                            Positioned(
                              top: hp(23),
                              right: wp(28),
                              child:FlatButton(
                                child: Text('پ',style: TextStyle( fontSize: 28)),
                                shape:CircleBorder(),
                                onPressed: () {
                                  playwrong();},
                                //specify background color  of button from our list of colors
                              ),

                            ),
                            Positioned(
                              top: hp(15),
                              left: wp(19),
                              child: FlatButton(

                                  child: Text('د',style: TextStyle( fontSize: 28)),
                                  onPressed: _onChanged1,
                                  color: _colors1[_currentIndex1],
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(28),
                              right: wp(40),
                              child:  FlatButton(

                                  child: Text('د',style: TextStyle( fontSize: 28)),

                                  onPressed: _onChanged2,

                                  color: _colors2[_currentIndex2],
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(18),
                              right: wp(65),
                              child:   FlatButton(

                                  child: Text('چ',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(18),
                              right: wp(8),
                              child:  FlatButton(

                                  child: Text('ک',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),

                            Positioned(
                              top: hp(22),
                              right: wp(45),
                              child: FlatButton(

                                  child: Text('ۆ',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(14),
                              right: wp(28),
                              child:FlatButton(

                                  child: Text('ن',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(6),
                              right: wp(28),
                              child:  FlatButton(

                                  child: Text('د',style: TextStyle( fontSize: 28)),

                                  onPressed: _onChanged3,

                                  color: _colors2[_currentIndex3],
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(10),
                              right: wp(60),
                              child:FlatButton(

                                  child: Text('م',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(9),
                              right: wp(13),
                              child:FlatButton(

                                  child: Text('گ',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(26),
                              right:wp(9),
                              child: FlatButton(

                                  child: Text('د',style: TextStyle( fontSize: 28)),

                                  onPressed: _onChanged4,

                                  color: _colors2[_currentIndex4],
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                            Positioned(
                              top: hp(26),
                              right: wp(55),
                              child:FlatButton(

                                  child: Text('ت',style: TextStyle( fontSize: 28)),

                                  onPressed: () {
                                    playwrong();},
                                  //specify background color  of button from our list of colors
                                  shape:CircleBorder()),

                            ),
                          ]
                      )


                    ),]),),


              Row(children: <Widget>[Container(
                decoration: new BoxDecoration(
                    color:Colors.transparent),
                child: Row(children: <Widget>[
                  new   Container(
                    margin: EdgeInsets.fromLTRB(wp(13.0), hp(5), wp(30),hp( 0)),

                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SixPage()));
                      },
                    ),),
                  new Container(
                    margin: EdgeInsets.fromLTRB(wp(0),hp( 5),wp( 0),hp( 0)),
                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Baloon()));
                      },
                    ),
                  ),
                ],),

              )],),




            ]),
      ),);


  }




}

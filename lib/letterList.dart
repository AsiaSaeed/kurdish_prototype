import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/SecondPage.dart';
import 'package:mainpage/drag.dart';
import 'package:mainpage/pages/home_page.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';

class LetterList extends StatefulWidget {
  @override
  _LetterListState createState() => _LetterListState();
}


final RoundedLoadingButtonController _btnController = new RoundedLoadingButtonController();

void _doSomething() async {
  Timer(Duration(seconds: 3), () {

  });
}
void playd() {
  final player = AudioCache();
  player.play('d.m4a');
}
class _LetterListState extends State<LetterList> {
  @override
  final GlobalKey<AnimatorWidgetState> basicAnimation1 =
  GlobalKey<AnimatorWidgetState>();

  final GlobalKey<AnimatorWidgetState> basicAnimation3 =
  GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> basicAnimation2 =
  GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> basicAnimation4 =
  GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> basicAnimation5 =
  GlobalKey<AnimatorWidgetState>();

  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(

      body: Container(
        child:

            CustomScrollView(
              slivers: <Widget>[

                SliverList(

                  delegate: SliverChildListDelegate(
                    [

                      Row(children: <Widget>[Container(
                       width: wp(100),
                        decoration: new BoxDecoration(
//
                            color: new Color(0xFF55c6f7)),
                        child: Row(children: <Widget>[
                          new Container(
                           // margin: EdgeInsets.fromLTRB(20.0, 14, 144, 13),
                            child: FlatButton(
                              child:new Container(
                                child: Image.asset('assets/book.png',width: wp(10),height: hp(10),),
                              ),
                              onPressed: () {
                                //  playSound();
                              },
                            ),),
                          SizedBox(
                            width: wp(56),
                          ),
                          new Container(
                       //     margin: EdgeInsets.fromLTRB(20, 14, 0, 13),
                            child: FlatButton(
                              child:new Container(
                                child: Image.asset('assets/homepage.png' ,width: wp(10),height: hp(10),),
                              ),
                              onPressed: () {
                                //  playSound();
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                            ),
                          ),
                        ],),

                      )],),
                      Container(    width: wp(90),

                        //color: Color(0xffffffff),



                        child:
                      Column(   children: <Widget>[
                        FadeInLeftBig(
                          key: basicAnimation1,
                         child: Container(
                              width: wp(80),
                              height: hp(23),

                              color: Colors.transparent,
                              margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: RoundedLoadingButton(
                                height: hp(35),

                                child:  Row(children: <Widget>[

                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                    child:Hero(
                                        tag: 'flutterLogo',
                                        child: GestureDetector(
                                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage())),
                                            child: Container(
                                              width: wp(37),
                                                height: hp(14),
                                              margin:EdgeInsets.fromLTRB(wp(2), 0, 0, 0),
                                                decoration: BoxDecoration(

                                                  image: DecorationImage(
                                                      image: AssetImage("assets/am.png"),fit: BoxFit.fill

                                                  ),

                                                ),
                                                child: Text('',style: TextStyle( fontSize: 28)),
                                            ),
                                            )),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: wp(15),
                                        height: hp(5),
                                        margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                        child: FlatButton(
                                          child:new Container(

                                            padding: EdgeInsets.all(0),
                                            margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                            child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                          ),
                                          onPressed: () {
                                            playd();
                                          },
                                        ),
                                      ),
                                      Container(
                                     margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                        padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(6),
                                    height: hp(9),


                                    child: Text('د',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                    ],
                                  ),
                                ],),
                                color: Color(0xfffde74c),

                                controller: _btnController,
                                onPressed: (){
//                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Drag()));
                                },
                              ),
                            ),
                       ),

                        FadeInRightBig(
                          key: basicAnimation2,
                          child: Container(
                            width: wp(80),
                            height: hp(23),

                            color: Colors.transparent,
                            margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: RoundedLoadingButton(
                              height: hp(35),

                              child:  Row(children: <Widget>[

                                Container(
                                  margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),

                                    child: Image.asset('assets/dar.png',width: wp(39),height: hp(19),),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: wp(15),
                                        height: hp(5),
                                        margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                        child: FlatButton(
                                          child:new Container(

                                            padding: EdgeInsets.all(0),
                                            margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                            child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                          ),
                                          onPressed: () {
                                            playd();
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                        padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                        width: wp(6),
                                        height: hp(10),


                                        child: Text('ر',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                ],),
                                controller: _btnController,
                                onPressed: _doSomething,
                                color: Color(0xff9bc53d),
                               // Color(0xff78D4FF),
                              ),
                            ),
                        ),

                        FadeInLeftBig(
                          key: basicAnimation3,
                           child: Container(
                             width: wp(80),
                             height: hp(23),

                             color: Colors.transparent,
                             margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                             child: RoundedLoadingButton(
                               height: hp(35),

                               child:  Row(children: <Widget>[

                                 Container(
                                   margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                    child: Image.asset('assets/moz.png',width: wp(39),height: hp(19),),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: wp(15),
                                        height: hp(5),
                                        margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                        child: FlatButton(
                                          child:new Container(

                                            padding: EdgeInsets.all(0),
                                            margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                            child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                          ),
                                          onPressed: () {
                                            playd();
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                        padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                        width: wp(6),
                                        height: hp(10),


                                        child: Text('ز',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                ],),

                                color: Color(0xfff8961e),
                                controller: _btnController,
                                onPressed: _doSomething,
                              ),
                            ),
                         ),

                        FadeInRightBig(
                          key: basicAnimation4,
                         child: Container(
                           width: wp(80),
                           height: hp(23),

                           color: Colors.transparent,
                           margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                           child: RoundedLoadingButton(
                             height: hp(35),

                             child:  Row(children: <Widget>[

                               Container(
                                 margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                    child: Image.asset('assets/chaw.png',width: wp(37),height: hp(17),),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: wp(15),
                                        height: hp(5),
                                        margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                        child: FlatButton(
                                          child:new Container(

                                            padding: EdgeInsets.all(0),
                                            margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                            child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                          ),
                                          onPressed: () {
                                            playd();
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                        padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                        width: wp(6),
                                        height: hp(10),


                                        child: Text('و',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                ],),

                                color: Color(0xffeddcd2),
                                controller: _btnController,
                                onPressed: _doSomething,
                              ),
                            ),
                       ),

                        FadeInLeftBig(
                          key: basicAnimation5,
                          child: Container(
                            width: wp(80),
                            height: hp(23),

                            color: Colors.transparent,
                            margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: RoundedLoadingButton(
                              height: hp(35),

                              child:  Row(children: <Widget>[

                                Container(
                                  margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                    child: Image.asset('assets/marr.png',width: wp(39),height: hp(19),),
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: wp(15),
                                        height: hp(5),
                                        margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                        child: FlatButton(
                                          child:new Container(

                                            padding: EdgeInsets.all(0),
                                            margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                            child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                          ),
                                          onPressed: () {
                                            playd();
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                        padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                        width: wp(6),
                                        height: hp(10),


                                        child: Text('ڕ',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                      ),
                                    ],
                                  ),
                                ],),

                                color: Color(0xffff6b6b),
                                controller: _btnController,
                                onPressed: _doSomething,
                              ),
                            ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                  child: Image.asset('assets/do.png',width: wp(39),height: hp(19),),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: wp(15),
                                      height: hp(5),
                                      margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                      child: FlatButton(
                                        child:new Container(

                                          padding: EdgeInsets.all(0),
                                          margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                          child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                        ),
                                        onPressed: () {
                                          playd();
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                      padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                      width: wp(8),
                                      height: hp(11),


                                      child: Text('ۆ',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ],),
                              color: Color(0xff78D4FF),

                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),

                       Container(
                         width: wp(80),
                         height: hp(23),

                         color: Colors.transparent,
                         margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                         child: RoundedLoadingButton(
                           height: hp(35),

                           child:  Row(children: <Widget>[

                             Container(
                               margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                  child: Image.asset('assets/nay.png',width: wp(39),height: hp(19),),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: wp(15),
                                      height: hp(5),
                                      margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                      child: FlatButton(
                                        child:new Container(

                                          padding: EdgeInsets.all(0),
                                          margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                          child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                        ),
                                        onPressed: () {
                                          playd();
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                      padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                      width: wp(11),
                                      height: hp(11),


                                      child: Text('ی',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ],),

                           color: Color(0xffeddcd2),
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),

                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                  child: Image.asset('assets/aw.png',width: wp(39),height: hp(19),),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: wp(15),
                                      height: hp(5),
                                      margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                      child: FlatButton(
                                        child:new Container(

                                          padding: EdgeInsets.all(0),
                                          margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                          child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                        ),
                                        onPressed: () {
                                          playd();
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                      padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                      width: wp(11),
                                      height: hp(11),


                                      child: Text('ئ',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ],),

                              color: Color(0xff9bc53d),
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),

                         Container(
                           width: wp(80),
                           height: hp(23),

                           color: Colors.transparent,

                           child: RoundedLoadingButton(
                             height: hp(35),

                             child:  Row(children: <Widget>[

                               Container(
                                 margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                  child: Image.asset('assets/nan.png',width: wp(40),height: hp(20),),
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: wp(15),
                                      height: hp(5),
                                      margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                      child: FlatButton(
                                        child:new Container(

                                          padding: EdgeInsets.all(0),
                                          margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                          child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                        ),
                                        onPressed: () {
                                          playd();
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                      padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                      width: wp(11),
                                      height: hp(11),


                                      child: Text('ن',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ],),

                             color: Color(0xfff8961e),
                              controller: _btnController,
                              onPressed: _doSomething,
                            ),
                          ),




                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/rozh.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(6),
                                    height: hp(10),


                                    child: Text('ژ',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),
                            color: Color(0xffff6b6b),

                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,

                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/lade.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(10),
                                    height: hp(11),


                                    child: Text('ێ',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xff78D4FF),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/kabab.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(12),
                                    height: hp(10),


                                    child: Text('ب',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xfffde74c),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/rewas.png',width: wp(39),height: hp(19),),),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: wp(15),
                                  height: hp(5),
                                  margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                  child: FlatButton(
                                    child:new Container(

                                      padding: EdgeInsets.all(0),
                                      margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                      child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                    ),
                                    onPressed: () {
                                      playd();
                                    },
                                  ),
                                ),
                                Container(
                                  margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                  padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                  width: wp(15),
                                  height: hp(13),


                                  child: Text('س',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                ),
                              ],
                            ),
                            ],),

                            color: Color(0xff9bc53d),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/barww.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(15),
                                    height: hp(10),


                                    child: Text('وو',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xfff8961e),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/dam.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(6),
                                    height: hp(10),


                                    child: Text('م',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xffff6b6b),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/pat.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(11),
                                    height: hp(10),


                                    child: Text('ت',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xff78D4FF),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/bwk.png',width:wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(9),
                                    height: hp(12),


                                    child: Text('ک',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xfffde74c),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/timsah.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(8),
                                    height: hp(11),


                                    child: Text('ح',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xff9bc53d),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/ash.png',width: wp(39),height: hp(19),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(14),
                                    height: hp(13),


                                    child: Text('ش',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),

                            color: Color(0xfff8961e),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),
                        Container(
                          width: wp(80),
                          height: hp(23),

                          color: Colors.transparent,
                          margin:EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: RoundedLoadingButton(
                            height: hp(35),

                            child:  Row(children: <Widget>[

                              Container(
                                margin:EdgeInsets.fromLTRB(wp(8), 0, 0, 0),
                                child: Image.asset('assets/top.png',width: wp(37),height: hp(20),),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: wp(15),
                                    height: hp(5),
                                    margin:EdgeInsets.fromLTRB(wp(3), hp(5), 0, 0),
                                    child: FlatButton(
                                      child:new Container(

                                        padding: EdgeInsets.all(0),
                                        margin:EdgeInsets.fromLTRB(wp(0), 0, 0, 0),
                                        child: Image.asset('assets/sound.png',width: wp(10),height: hp(8),),
                                      ),
                                      onPressed: () {
                                        playd();
                                      },
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(wp(6), hp(0), wp(0), hp(0)),
                                    padding: EdgeInsets.all(0),
//                                       color: Colors.red,
                                    width: wp(11),
                                    height: hp(13),


                                    child: Text('پ',style: TextStyle( fontSize: 60 ,color: Colors.black)),
                                  ),
                                ],
                              ),
                            ],),
                            color: Color(0xffff6b6b),
                            controller: _btnController,
                            onPressed: _doSomething,
                          ),
                        ),

                        ]),),
                    ],
                  ),
                ),


              ],
            ),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

}


class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      alignment: Alignment.center,

    );
  }
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    bool _visible = true;
    return Scaffold(

      body:



      SafeArea(
        child: Column(
          children: <Widget>[
            Container(
               margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.topCenter,
              width: wp(100),


              child: Row(children: <Widget>[Container(

                decoration: new BoxDecoration(
                    color: new Color(0xFF55c6f7)
                ),
                width: wp(100),
                child: Container(


                  child:Row(children: <Widget>[

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





            SizedBox(height: hp(1),),
            RatingBar(
              initialRating: 10,
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
                margin:EdgeInsets.fromLTRB(wp(60), hp(3), 0, 0) ,
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



                  Text('ببینەو بڵێ ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),




                ],)
            ),
         Container(

           child: Center(
              child: Hero(
                  tag: 'flutterLogo',
                  child:Image.asset('assets/am.png',width: wp(100),height: hp(50),),
              ),
            ),
         ),


            Row(children: <Widget>[Container(
              decoration: new BoxDecoration(
                  color:Colors.transparent),
              child: Row(children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(wp(13.0), hp(12), wp(30),hp( 0)),
                  //alignment: Alignment.bottomRight,
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                    },
                  ),),
                new Container(
                  //alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.fromLTRB(wp(0),hp( 12),wp( 0),hp( 0)),
                  child: FlatButton(
                    child:new Container(
                      child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LetterList()));
                    },
                  ),
                ),
              ],),

            )],),
          ], ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mainpage/ThreePage.dart';
import 'package:painter2/painter2.dart';
import 'package:mainpage/baloon.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:responsive_screen/responsive_screen.dart';
import 'package:avatar_glow/avatar_glow.dart';



class Painting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'چالاکی',
      home: Nwsin(),
    );
  }
}

class Nwsin extends StatefulWidget {
  @override
  _NwsinState createState() => new _NwsinState();
}

class _NwsinState extends State<Nwsin> {
  bool _finished;
  PainterController _controller;

  @override
  void initState() {
    super.initState();
    _finished = false;
    _controller = newController();
  }

  PainterController newController() {
    PainterController controller = PainterController();
    controller.thickness = 5.0;

    controller.backgroundImage =   Image.asset('assets/ama.png',width: 350,height: 280,);
    return controller;
  }

  @override
  Widget build(BuildContext context) {

    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(

        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topCenter,
                width: wp(100),

              color: new Color(0xFF55c6f7),
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





              SizedBox(height: hp(1),),
              RatingBar(
                initialRating: 4,
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
                  margin:EdgeInsets.fromLTRB(wp(10), wp(1),0, 0) ,
                  child: Text('چالاکی (١)',style:TextStyle(fontWeight: FontWeight.bold ,fontSize: 17,color: Color(0xff0A7478 ),),),),


              Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.fromLTRB(wp(5), 0,wp(14), hp(0)) ,
                    width: wp(25),
                    height: hp(18),
                    child:  Image.asset('assets/bama.png'),
                  ),
                  Container(
                      width: wp(54),
                      height: hp(4),
                      margin:EdgeInsets.fromLTRB(0, 0,0, 0) ,
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
                            margin:EdgeInsets.fromLTRB(wp(0), hp(0), 0, hp(0)) ,child: Text('تۆخ بکەوە،بخوێنەوە، بنووسەوە     ',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 14),)),


                      ],)
                  ),
                ],
              ),



              Row(children: <Widget>[

                Container(
                  margin:EdgeInsets.fromLTRB(wp(15), hp(0), 0, hp(0)) ,
                  child: Column(children: <Widget>[
                    Row(children: <Widget>[


                      IconButton(
                        icon: Icon(Icons.undo,color: Colors.orangeAccent,size: 19,),
                        tooltip: 'Undo',
                        onPressed: () {
                          if (_controller.canUndo) _controller.undo();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.redo,color: Colors.orangeAccent,size: 19,),
                        tooltip: 'Redo',
                        onPressed: () {
                          if (_controller.canRedo) _controller.redo();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete,color: Colors.orangeAccent,size: 19,),
                        tooltip: 'Clear',
                        onPressed: () => _controller.clear(),
                      ),

                      Container(
                        width: wp(40),
                        child: PreferredSize(
                        child: DrawBar(_controller),
                        preferredSize: Size(MediaQuery.of(context).size.width, 17.0,),
                      ),),
                    ],),



                  ],),
                )





              ],),



              Row(children: <Widget>[


                Container(
                  width: wp(90),
                  height:hp(41),
                  margin: EdgeInsets.fromLTRB(wp(5), 0, 0, 0),
                  child: Center(
                      child: AspectRatio(aspectRatio: wp(0.3),

                          child: Painter(_controller))),


                )
              ],),



              Row(children: <Widget>[Container(
                decoration: new BoxDecoration(
                    color:Colors.transparent),
                child: Row(children: <Widget>[
                  new  Container(
                    margin: EdgeInsets.fromLTRB(wp(13.0), hp(0), wp(30),hp( 0)),

                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/leftt.png',width: wp(13),height: hp(13),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Baloon()));
                      },
                    ),),
                  new Container(
                    margin: EdgeInsets.fromLTRB(wp(0),hp( 0),wp( 0),hp( 0)),
                    child: FlatButton(
                      child:new Container(
                        child: Image.asset('assets/rightt.png',width: wp(13),height: hp(13),),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreePage()));
                      },
                    ),
                  ),
                ],),

              )],),
            ],



          ),
        )

    );
  }
}

class DrawBar extends StatelessWidget {
  final PainterController _controller;

  DrawBar(this._controller);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                  child: Slider(
                    value: _controller.thickness,
                    onChanged: (value) => setState(() {
                      _controller.thickness = value;
                    }),
                    min: 1.0,
                    max: 10.0,
                    activeColor: Colors.orangeAccent,
                  ));
            })),

        ColorPickerButton(_controller, true),
      ],
    );
  }
}

class ColorPickerButton extends StatefulWidget {
  final PainterController _controller;
  final bool _background;

  ColorPickerButton(this._controller, this._background);

  @override
  _ColorPickerButtonState createState() => new _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_iconData, color: _color),

      onPressed: () => _pickColor(),
    );
  }

  void _pickColor() {

    Color pickerColor = _color;
    Navigator.of(context)
        .push(MaterialPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('هەڵبژاردنی ڕەنگ'),
              ),
              body: Container(
                  alignment: Alignment.center,
                  child: ColorPicker(
                    pickerColor: pickerColor,
                    onColorChanged: (Color c) => pickerColor = c,
                  )));
        }))
        .then((_) {
      setState(() {
        _color = pickerColor;
      });
    });
  }

  Color get _color =>

      widget._controller.drawColor;

  IconData get _iconData =>
      Icons.edit;


  set _color(Color color) {
    if (widget._background) {

      widget._controller.drawColor = color;
    }
  }
}
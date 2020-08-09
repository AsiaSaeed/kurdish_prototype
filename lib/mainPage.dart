import 'package:flutter/material.dart';
import 'package:mainpage/letterList.dart';
import 'package:responsive_screen/responsive_screen.dart';
void main() => runApp(MainPage());


class MainPage extends StatelessWidget {
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




  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/mainback.png"),fit: BoxFit.fill
          ),
        ),
        child: Stack(
          children: <Widget>[

            Positioned(
              top: hp(-18),
              right: wp(5),
              child:Image.asset("assets/back.png",width: wp(90),height: hp(75),) ,
            ),
            Positioned(
              top: hp(15),
              right: wp(26),
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'فێربوونی زمانی کوردی',
                    style: TextStyle(
                      fontSize: 26,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color = Colors.brown,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'فێربوونی زمانی کوردی',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),



            Positioned(
              top: hp(35),
              right: wp(18),
              child:Image.asset("assets/smora.png",width: wp(63),height: hp(88),) ,
            ),
            Positioned(
              top: hp(13),
              left: wp(-6),
              child:Container(

                  child: Image.asset("assets/barumain.png",width: wp(60),height: hp(60),)) ,
            ),
            Positioned(
              top: hp(13),
              left: wp(45),
              child:Image.asset("assets/baruright.png",width: wp(60),height: hp(60),) ,
            ),
            Positioned(
              top: hp(38),
              right: wp(22),
              child:
              FlatButton(
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      '١',
                      style: TextStyle(
                        fontSize: 92,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.brown,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      '١',
                      style: TextStyle(
                        fontSize: 92,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LetterList()));
                },
              ),
            ),
            Positioned(
              top: hp(13),
              left: wp(-6),
              child:Container(

                  child: Image.asset("assets/barumain.png",width: wp(60),height: hp(60),)) ,
            ),
            Positioned(
              top: hp(38),
              right: wp(62),
              child:FlatButton(
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      '٢',
                      style: TextStyle(
                        fontSize: 92,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.brown,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      '٢',
                      style: TextStyle(
                        fontSize: 92,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
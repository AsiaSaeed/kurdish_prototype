import 'package:flutter/material.dart';
import 'package:responsive_screen/responsive_screen.dart';
void main() => runApp(Nmrakan());

class Nmrakan extends StatelessWidget {
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

      body:Container(
        decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/mainback.png"),fit: BoxFit.fill
          ),
        ),
        child: Stack(
            children: <Widget>[

              Positioned(
                top: hp(2),
                right: wp(20),
                child:Image.asset("assets/titleba.png",width: wp(60),height: hp(30),) ,
              ),
              Positioned(
                top: hp(11),
                right: wp(42),
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'نمرەکان',
                      style: TextStyle(
                        fontSize: 28,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.brown,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'نمرەکان',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: hp(-8),
                right: wp(3),
                child:Image.asset("assets/backnmrakan.png",width: wp(95),height: hp(100),) ,
              ),
              Positioned(
                top: hp(47),
                right: wp(10),
                child:Image.asset("assets/smorahalparke.png",width: wp(60),height: hp(68),) ,
              ),
              Positioned(
                top: hp(38),
                right: wp(40),
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      '١٠٠',
                      style: TextStyle(
                        fontSize: 90,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Colors.brown,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      '١٠٠',
                      style: TextStyle(
                        fontSize: 90,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ] ),







      ),

    );
  }
}
import 'package:flutter/material.dart';

import 'package:mainpage/letterList.dart';
import 'package:responsive_screen/responsive_screen.dart';
import '../aboutApp.dart';
import './page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String currentProfilePic = "https://pbs.twimg.com/profile_images/882576317581012992/YkGTJVkP_400x400.jpg";
  String otherProfilePic = "https://image.freepik.com/free-vector/many-trees-forest-background_43633-8633.jpg";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp;
    return new Scaffold(
        appBar: new AppBar( backgroundColor:  new Color(0xFF55c6f7)),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text("BAHA@gmail.com"),
                accountName: new Text("BAHA"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(currentProfilePic),
                  ),
                  onTap: () => print("This is your current account."),
                ),

                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage("https://image.freepik.com/free-vector/many-trees-forest-background_43633-8633.jpg"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              new ListTile(
                  title: new Text("دەربارەی فێربوونی زمانی کوردی"),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>  AboutApp()));
                  }
              ),
              new ListTile(
                  title: new Text("دەربارەی ئێمە"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => AboutUs()));
                  }
              ),
              new Divider(),
              new ListTile(
                title: new Text("داخستن  "),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        body: new Center(
          child: Container(
            decoration: BoxDecoration(

              image: DecorationImage(
                  image: AssetImage("assets/mainback.png"),fit: BoxFit.fill
              ),
            ),
            child: Stack(
              children: <Widget>[

                Positioned(
                  top: hp(-27),
                  right: wp(5),
                  child:Image.asset("assets/back.png",width: wp(90),height: hp(75),) ,
                ),
                Positioned(
                  top: hp(7),
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
                  top: hp(29),
                  right: wp(21),
                  child:Image.asset("assets/smora.png",width: wp(60),height: hp(83),) ,
                ),
                Positioned(
                  top: hp(8),
                  left: wp(-6),
                  child:Container(

                      child: Image.asset("assets/barumain.png",width: wp(58),height: hp(58),)) ,
                ),
                Positioned(
                  top: hp(8),
                  left: wp(47),
                  child:Image.asset("assets/baruright.png",width: wp(58),height: hp(58),) ,
                ),
                Positioned(
                  top: hp(32),
                  right: wp(20),
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
                  top: hp(8),
                  left: wp(-6),
                  child:Container(

                      child: Image.asset("assets/barumain.png",width: wp(58),height: hp(58),)) ,
                ),
                Positioned(
                  top: hp(32),
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
        )
    );
  }
}
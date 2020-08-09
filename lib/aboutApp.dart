import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {



  AboutApp();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("ەربارەی فێربوونی زمانی کوردی"), backgroundColor:  new Color(0xFF55c6f7),),
      body: new Center(
        child: new Text("چۆنن"),
      ),
    );
  }
}
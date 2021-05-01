import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'item.dart';
class ThirdScreen extends StatelessWidget {
  Location current;

  ThirdScreen(this.current);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(current.title)),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.location_on),
          onPressed: (){MapUtils.openMap(current.location);},
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(current.title,
                  style: new TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold))),
          Container(
            margin: EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            child: Image.network(current.image,width: 300, height: 300),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20, right: 5, left: 5),
            child: Text(current.desc,
                style:
                    new TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic)),
          ),
        ])),
      ),
    );
  }
}


class MapUtils {

  MapUtils._();

  static Future<void> openMap(String para) async {
    if (await canLaunch(para)) {
      await launch(para);
    } else {
      throw 'Could not open the map.';
    }
  }
}
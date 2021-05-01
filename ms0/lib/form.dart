import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:ms0/item.dart';
import 'main2.dart';
class FourthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Form();
  }
}

class _Form extends State {
  TextEditingController name = new TextEditingController();
  TextEditingController theme = new TextEditingController();
  TextEditingController desc = new TextEditingController();
  TextEditingController image = new TextEditingController();
  TextEditingController location = new TextEditingController();
bool check(){
  if (name.text.toString().isEmpty) {
    Fluttertoast.showToast(
        msg: "Location Name is required",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
    return false;
  }
  if (theme.text.toString().isEmpty) {
    Fluttertoast.showToast(
        msg: "Theme is required",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
    return false;
  }
  if (desc.text.toString().isEmpty) {
    Fluttertoast.showToast(
        msg: "Description is required",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
    return false;
  }
  if (image.text.toString().isEmpty) {
    Fluttertoast.showToast(
        msg: "Image Url is required",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
    return false;
  }
  if (location.text.toString().isEmpty) {
    Fluttertoast.showToast(
        msg: "Location URL is required",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
    return false;
  }
  return true;
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.save),
            onPressed: (){
              bool value = check();
              if (value){
                SecondScreen.add_item(Location(id: SecondScreen.getCounter(),name:name.text.toString(), imageUrl :image.text.toString(), description:desc.text.toString(), theme : theme.text.toString(), locationUrl:location.text.toString(),rate:0.0));
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondScreen()));
              }
            },
          )
          ,
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height:100),
                  Container(
                      margin: EdgeInsets.all(10),
                      child:    TextFormField(
                        autofocus: false,
                        controller: name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_on),
                          hintText: 'Location',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),),
                  Container(
                      margin: EdgeInsets.all(10),
                      child:     TextFormField(
                        autofocus: false,
                        controller: theme,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.category),
                          hintText: 'Theme',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),),
                  Container(
                      margin: EdgeInsets.all(10),
                      child:     TextFormField(
                        autofocus: false,
                        controller: desc,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.description),
                          hintText: 'Description',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),),
                  Container(
                      margin: EdgeInsets.all(10),
                      child:     TextFormField(
                        autofocus: false,
                        controller: image,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.image),
                          hintText: 'Image Url',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),),
                  Container(
                      margin: EdgeInsets.all(10),
                      child:     TextFormField(
                        autofocus: false,
                        controller: location,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.add_location),
                          hintText: 'Location url',
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                        ),
                      ),
                  )],
              ),
            ),
          )),
    );
  }
}

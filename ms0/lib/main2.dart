import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ms0/authFev.dart';
import 'item.dart';
import 'form.dart';
import 'main3.dart';
class SecondScreen extends StatefulWidget {
  static void add_item(Location x) {
    _SecondScreen.add_item(x);
  }

  static int getCounter() {
    return _SecondScreen.getCounter();
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // addLocations();
    return _SecondScreen();
  }

}

class _SecondScreen extends State {
  static int counter = 9;

  Future logout() async {
    AuthFev().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
        leading: GestureDetector(
        onTap: ()
    {
      logout();
    },
    child: Icon(
    Icons.logout, // add custom icons also
    ),
    ),
    ),
    floatingActionButton: FloatingActionButton(
    heroTag: "fb1",
    onPressed: () {
    Navigator.push(
    context, MaterialPageRoute(builder: (_) => FourthScreen()));
    },
    child: Icon(Icons.add),
    ),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('location').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: snapshot.data.docs.map((document) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child:InkWell(
                      onLongPress: (){
                        showDialog(
                          context: context,builder: (BuildContext context) {
                          return Dialog(                                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(20.0)),
                            child: Container(
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                        "Are you sure you wanna delete this location ?"),
                                    Container(
                                        margin: EdgeInsets.only(top: 30,right: 10,left: 10),
                                        width: 200,
                                        padding: EdgeInsets.all(5),
                                        child:FloatingActionButton(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.all(
                                                  Radius.circular(
                                                      8.0))),
                                          onPressed: (){
                                            FirebaseFirestore.instance.collection('location')
                          .where("id", isEqualTo: document['id']).get().then((snapshot){
                          snapshot.docs.first.reference.delete();
                                            Navigator.of(context).pop();
                                          });},
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });

                      },
                      onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdScreen(Location(id:document['id'],description:document['description'],imageUrl: document['imageUrl']
                          ,locationUrl: document['locationUrl'],name: document['name'],theme: document['theme']))));},
                      child: Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            Image.network(document['imageUrl'],width: 300,height:300),
                            Text(document['name'],style: new TextStyle(
                                fontSize: 20, color: Colors.black)),
                            Text(document['theme'],
                                style: new TextStyle(
                                    fontSize: 15,
                                    color: Colors.black12,
                                    fontWeight: FontWeight.bold)),
                          ],

                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
    ))        ;
}

static void add_item(Location item) {
FirebaseFirestore.instance.collection('location')
    .add({
      'name':item.title,
      'description':item.desc,
      'id':item.id,
      'theme':item.theme,
      'imageUrl':item.image,
      'locationUrl':item.location
    });
}
Future<void> signout() async {
  await AuthFev().signOut();
}

static void setCounter
(){
counter++;
}
static int getCounter
(){
setCounter();
return counter;
}
}

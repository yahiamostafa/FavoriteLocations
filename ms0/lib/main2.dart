import 'package:flutter/material.dart';
import 'package:ms0/authFev.dart';
import 'main3.dart';
import 'item.dart';
import 'form.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class SecondScreen extends StatefulWidget {
  static void add_item(Location x){
    _SecondScreen.add_item(x);
  }
  static int getCounter() {
    return _SecondScreen.getCounter();
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondScreen();
  }
}
class _SecondScreen extends State{
  static List<Location> _items = [
    Location(
      id : 6,
        name: "Citadel of Qaitbay",
        imageUrl : "https://www.luxorandaswan.com/blog/wp-content/uploads/2019/07/citadel-of-qaitbay-fortress-alexandria-egypt-marek-poplawski.jpg",
        description: "The Citadel of Qaitbay is a 15th-century defensive fortress located on the Mediterranean sea coast, in Alexandria, Egypt. It was established in 1477 AD by Sultan Al-Ashraf Sayf al-Din Qa'it Bay. The Citadel is situated on the eastern side of the northern tip of Pharos Island at the mouth of the Eastern Harbour.",
        theme:"Alexandrian Heritage",
        locationUrl:"https://www.google.com/maps/place/Citadel+of+Qaitbay/@31.214011,29.8834496,17z/data=!3m1!4b1!4m5!3m4!1s0x14f5c3ff1b30e255:0xc201e7869ae9971f!8m2!3d31.214011!4d29.8856383"),
    Location(
      id:7,
       name : "Bibliotheca Alexandrina",
        imageUrl:"https://www.arabcont.com/Images/ProjectImage/AlexLib02.jpg",
       description: "Alexandria’s ancient library was one of the greatest of all classical institutions, and while replacing it might seem a Herculean task, the new Bibliotheca Alexandrina manages this with aplomb. Opened in 2002, this impressive piece of modern architecture is a deliberate attempt to rekindle the brilliance of the original centre of learning and culture. The complex has become one of Egypt’s major cultural venues and a stage for numerous international performers, and is home to a collection of brilliant museums.",
        theme:"Alexandrian Heritage",
        locationUrl:"https://www.google.com/maps/place/Bibliotheca+Alexandrina/@31.2088705,29.9070125,17z/data=!3m1!4b1!4m5!3m4!1s0x14f5c38a0562fe85:0xa34cc632ec23e7!8m2!3d31.2088705!4d29.9092012"),
    Location(
      id:8,
        name: "Montaza Palace",
        imageUrl:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Alexandria-MontazahPalace.jpg/1200px-Alexandria-MontazahPalace.jpg",
        description:"Montaza Palace is a palace, museum and extensive gardens in the Montaza district of Alexandria, Egypt. It was built on a low plateau east of central Alexandria overlooking a beach on the Mediterranean Sea.",
        theme:"Alexandrian Heritage",
        locationUrl:"https://www.google.com/maps/place/Montaza+Palace/@31.2884954,30.0137805,17z/data=!3m1!4b1!4m5!3m4!1s0x14f5d05ef533eccb:0xae82154762ef9858!8m2!3d31.2884954!4d30.0159692"),
    Location(
      id:9,
        name:"Stanley Bridge",
        imageUrl:"https://www.arabcont.com/Images/ProjectImage/Stanly02.jpg",
        description:"This bridge offers great panoramic views of the Mediterranean, becoming an even more special place to visit at night. The bridge has a total length of 400 meters. In the area nearby there are many hotels and restaurants. This is a good place to come and enjoy the sea breeze or have a nice walk around before or after dining at one of the restaurants in the area.",
        theme:"Alexandrian Heritage",
        locationUrl:"https://www.google.com/maps?q=latitude+and+longitudes+stanley+bridge+alexandria&safe=active&sxsrf=ALeKk03HqI84ADr_CaPerbgOTEDadxAQDQ:1617391858063&gs_lcp=Cgdnd3Mtd2l6EAMYADIECCEQCjoHCAAQRxCwAzoHCCMQsAIQJ1CYHljRNmDkSGgBcAJ4AIAB6QGIAZoGkgEFMC4zLjGYAQCgAQGqAQdnd3Mtd2l6yAEIwAEB&um=1&ie=UTF-8&sa=X&ved=2ahUKEwj-pbSepuDvAhUE8bsIHb6FBMsQ_AUoAXoECAEQAw"),
    Location(
      id:9,
        name:"Alexandria National Museum",
        imageUrl:"https://www.egypttoday.com/siteimages/Larg/35106.jpg",
        description:"Inaugurated in 2003 and located in a restored Italian palace that used to house the United States consulate, this museum contains more than 1,800 artifacts that narrate the history of Alexandria. Most of them come from other Egyptian museums. Visitors will be able to admire works from the Hellenistic period, including a varied range of objects such as jewels, weapons and coins.",
        theme:"Alexandrian Heritage",
        locationUrl:"https://www.google.com/maps/place/Alexandria+National+Museum/@31.2007415,29.911009,17z/data=!3m1!4b1!4m5!3m4!1s0x14f5c38efd4b015d:0xa2ebaf38ebb3039b!8m2!3d31.2007415!4d29.9131977"),
    Location(
        id: 1,
        name: "The Egyptian Museum",
        description:
        "The Museum of Egyptian Antiquities, known commonly as the Egyptian Museum or Museum of Cairo, in Cairo, Egypt, is home to an extensive collection of ancient Egyptian antiquities. It has 120,000 items, with a representative amount on display and the remainder in storerooms. Built in 1901 by the Italian construction company, Garozzo-Zaffarani, to a design by the French architect Marcel Dourgnon, the edifice is one of the largest museums in the region. As of March 2019, the museum was open to the public. In 2021, the museum is due to be superseded by the new Grand Egyptian Museum at Giza.",
        theme: "egyptian heritage",
        imageUrl:
        "https://www.mazadatours.com/wp-content/uploads/2017/01/Egyptian-Museum-in-Cairo2.jpg",
        locationUrl:
        'https://www.google.com/maps/place/The+Egyptian+Museum/@30.0209745,31.1411905,13z/data=!4m8!1m2!2m1!1segyptian+museum!3m4!1s0x0:0x520da52b3a7a660f!8m2!3d30.0475784!4d31.2336159'),
    Location(
        id: 2,
        name: "The Great Pyramid of Giza",
        description:
        "The Great Pyramid of Giza (also known as the Pyramid of Khufu or the Pyramid of Cheops) is the oldest and largest of the three pyramids in the Giza pyramid complex bordering present-day Giza in Greater Cairo, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.",
        theme: "pharaonic",
        imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg",
        locationUrl:
        "https://www.google.com/maps/place/The+Great+Pyramid+of+Giza/@29.9792391,31.1320132,17z/data=!3m1!4b1!4m5!3m4!1s0x14584587ac8f291b:0x810c2f3fa2a52424!8m2!3d29.9792345!4d31.1342019"),
    Location(
        id: 3,
        name: "Abu Simbel temples",
        description:
        "The Abu Simbel temples are two massive rock-cut temples at Abu Simbel (Arabic: أبو سمبل‎), a village in Aswan Governorate, Upper Egypt, near the border with Sudan. They are situated on the western bank of Lake Nasser, about 230 km (140 mi) southwest of Aswan (about 300 km (190 mi) by road). The complex is part of the UNESCO World Heritage Site known as the 'Nubian Monuments', which run from Abu Simbel downriver to Philae (near Aswan). The twin temples were originally carved out of the mountainside in the 13th century BC, during the 19th Dynasty reign of the Pharaoh Ramesses II. They serve as a lasting monument to the king Ramesses II. His wife Nefertari and children can be seen in smaller figures by his feet, considered to be of lesser importance and were not given the same position of scale. This commemorates his victory at the Battle of Kadesh. Their huge external rock relief figures have become iconic.",
        theme: "pharaonic",
        imageUrl:
        "https://www.worldatlas.com/upload/4f/c6/2f/shutterstock-397432201.jpg",
        locationUrl:
        "https://www.google.com/maps/place/Abu+Simbel+Temples/@22.3372368,31.6236103,17z/data=!3m1!4b1!4m5!3m4!1s0x143aa988b126055b:0xa7d3cc6618f898d2!8m2!3d22.3372319!4d31.625799"),
    Location(
        id: 4,
        name: "Philae",
        description:
        "Philae is an island in the reservoir of the Aswan Low Dam, downstream of the Aswan Dam and Lake Nasser, Egypt. Philae was originally located near the expansive First Cataract of the Nile in Upper Egypt and was the site of an Egyptian temple complex. These rapids and the surrounding area have been variously flooded since the initial construction of the Aswan Low Dam in 1902.[3] The temple complex was dismantled and moved to nearby Agilkia Island as part of the UNESCO Nubia Campaign project, protecting this and other complexes before the 1970 completion of the Aswan High Dam.[4] The hieroglyphic reliefs of the temple complex are being studied and published by the Philae Temple Text Project of the Austrian Academy of Sciences, Vienna (Institute OREA).",
        theme: "pharaonic",
        imageUrl:
        "https://4.bp.blogspot.com/-6RX--BMe-PA/UHAa8fRiKaI/AAAAAAAABXA/5v9KcZ3HCvY/s1600/IMGP2321.jpg",
        locationUrl:
        "https://www.google.com/maps/place/Philae/@24.0134126,32.8678317,15z/data=!3m1!4b1!4m5!3m4!1s0x143662bfbe299cbf:0xd571ef8bf3780147!8m2!3d24.01266!4d32.8775404"),
    Location(
        id: 5,
        name: "Luxor Temple",
        description:
        "The Luxor Temple (Arabic: معبد الاقصر) is a large Ancient Egyptian temple complex located on the east bank of the Nile River in the city today known as Luxor (ancient Thebes) and was constructed approximately 1400 BCE. In the Egyptian language it is known as ipet resyt, 'the southern sanctuary'. In Luxor there are several great temples on the east and west banks. Four of the major mortuary temples visited by early travelers include the Temple of Seti I at Gurnah, the Temple of Hatshepsut at Deir el Bahri, the Temple of Ramesses II (i.e., Ramesseum), and the Temple of Ramesses III at Medinet Habu. The two primary cults' temples on the east bank are known as the Karnak and Luxor.[1] Unlike the other temples in Thebes, Luxor temple is not dedicated to a cult god or a deified version of the pharaoh in death. Instead, Luxor temple is dedicated to the rejuvenation of kingship; it may have been where many of the pharaohs of Egypt were crowned in reality or conceptually (as in the case of Alexander the Great, who claimed he was crowned at Luxor but may never have traveled south of Memphis, near modern Cairo).",
        theme: "pharaonic",
        imageUrl:
        "https://lp-cms-production.imgix.net/2019-06/19e21d328924e00b3d35b92fc9f380ac-luxor-temple.jpg",
        locationUrl:
        "https://www.google.com/maps/place/Luxor+Temple/@25.6995068,32.6368622,17z/data=!3m1!4b1!4m5!3m4!1s0x144915c41edadf61:0x7693895c346c7d81!8m2!3d25.699502!4d32.6390509"),
  ];
  static int counter = 9;
  Future logout() async{
    AuthFev().signOut();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {logout();},
              child: Icon(
                Icons.logout,  // add custom icons also
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
          body: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Column(
                      children: _items
                          .map(
                            (e) => Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            child: InkWell(
                                child: Card(
                                  child: Column(children: [
                                      (e.image.contains("http")?Image.network(e.image,width: 300, height: 300):Image.asset(e.image, width: 300, height: 300)),
                                    Text(e.title,
                                        style: new TextStyle(
                                            fontSize: 20, color: Colors.black)),
                                    Text(e.theme,
                                        style: new TextStyle(
                                            fontSize: 15,
                                            color: Colors.black12,
                                            fontWeight: FontWeight.bold))
                                  ,
                                RatingBar.builder(
                                  initialRating: e.rate,
                                  minRating: 0.5,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    e.rate = rating;
                                  },
                                )
                                  ]),
                                  elevation: 8,
                                ),
                                onLongPress: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
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
                                                        onPressed: (){setState(() {
                                                          _items.remove(e);
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
                                  ;
                                },
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThirdScreen(e)));
                                })),
                      )
                          .toList()),
                ),
              )),
        ));
  }

  static void add_item(Location item) {
    _items.add(item);
  }
  Future<void> signout() async{
    await AuthFev().signOut();
  }
   static void setCounter(){
    counter++;
   }
   static int getCounter(){
    setCounter();
    return counter;
   }
}

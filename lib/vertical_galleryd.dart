import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class VertD extends StatefulWidget {
  const VertD({super.key});

  @override
  State<VertD> createState() => _VertState();
}

class _VertState extends State<VertD> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          //
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                      ),
                      Image(
                        image: AssetImage('assets/images/dacs.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Mighty Dacs Pet Shop and Accessories",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/mightydacs");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                      ),
                      Image(
                        image: AssetImage('assets/images/precious.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Precious Pets & Accessories",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/preciouspetsacc");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                      ),
                      Image(
                        image: AssetImage('assets/images/rhenz.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Rhenz AquaRoom",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/profile.php?id=100063849164028");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                      ),
                      Image(
                        image: AssetImage('assets/images/animal.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Animal Life Clinic",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/profile.php?id=100064235041002");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                      ),
                      Image(
                        image: AssetImage('assets/images/francis.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text(
                              "St. Francis Veterinary Clinic and Grooming Services",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/St.FrancisVetClinic");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //
        ],
      ),
    );
  }
}

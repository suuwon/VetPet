import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Vert extends StatefulWidget {
  const Vert({super.key});

  @override
  State<Vert> createState() => _VertState();
}

class _VertState extends State<Vert> {
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
                        image: AssetImage('assets/images/zac.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Zacarias Animal Clinic",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/zacariasanimalclinic");
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
                        image: AssetImage('assets/images/cnh.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Claws 'n Hooves Animal Clinic",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/clawsandhooves.animalclinic");
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
                        image: AssetImage('assets/images/centro.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Centro Beterinario Animal Clinic",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/centrobeterinario");
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

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class VertC extends StatefulWidget {
  const VertC({super.key});

  @override
  State<VertC> createState() => _VertState();
}

class _VertState extends State<VertC> {
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
                        image: AssetImage('assets/images/aquamate.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("Aquamate Pet Store",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/AquamatePetStore");
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
                        image: AssetImage('assets/images/nose_tail.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text(
                              "Nose To Tail Veterinary Clinic and Grooming Center",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/profile.php?id=100068676510574");
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
                        image: AssetImage('assets/images/pet_doctor.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text(
                              "Pet Doctors Veterinary Clinic and Grooming Center",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/PetDoctorsVeterinaryClinic");
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
                        image: AssetImage('assets/images/dog_cat.jpg'),
                      ),
                      Container(
                        height: 90,
                        width: 1300,
                        color: Color(0xFFF3D06E),
                        child: TextButton(
                          child: Text("D&R Dog and Cat Clinic",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(221, 78, 78, 78))),
                          onPressed: () {
                            launchUrlString(
                                "https://www.facebook.com/dogcatdr");
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

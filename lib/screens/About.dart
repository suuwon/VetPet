import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vetpet/screens/Details.dart';
import 'package:vetpet/screens/HomeScreen.dart';
import 'package:vetpet/vertical_gallery.dart';
import 'package:vetpet/screens/Guide.dart';
import 'package:vetpet/screens/home.dart';
import 'package:vetpet/screens/About.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/vetpet_bg.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'VetPet',
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(1000, 143, 109, 52)),
          ),
          backgroundColor: Color(0xFFF3D06E),
          iconTheme: IconThemeData(color: Color(0xFF8F6D34)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(36.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/VetPet.png',
                  height: 400,
                ),
              ),
              Container(
                padding: EdgeInsets.all(50.0),
                height: 1100,
                width: 1000,
                color: Color.fromRGBO(243, 208, 110, .6),
                child: Text(
                  "A veterinary clinic booking application that helps users with pets locate the nearest clinic within their town. In terms of location, the application also provide animal essential shops available nearby for the convenience of all furparents. \n \n \n Columbres, Kristine Lhei Gamboa\n Concepcion, Leoncio Rial III Sta. Cruz\n Estacio, Juliana Sapitula\n Halog, Janssen Angel Imbat\n Mamaril, Karen Mae Edades \n \n est. 2023",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(221, 78, 78, 78),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        //NAV DRAWER
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
                child: Center(
              child: Image.asset(
                'assets/images/VetPet.png',
                height: 500,
              ),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'HOME',
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'PET INFO',
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Details()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'ABOUT US',
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}

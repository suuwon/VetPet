import 'package:flutter/material.dart';
import 'package:vetpet/main.dart';
import 'package:vetpet/screens/Details.dart';
import 'package:vetpet/screens/HomeScreen.dart';
import 'package:vetpet/vertical_gallery.dart';
import 'package:vetpet/screens/Guide.dart';
import 'package:vetpet/screens/home.dart';
import 'package:vetpet/screens/About.dart';
import 'package:vetpet/vertical_galleryc.dart';
import 'package:vetpet/vertical_galleryd.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) => Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/vetpet_bg.png"),
            fit: BoxFit.cover),
      ),
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
            children: <Widget>[
              Container(
                  child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter location',
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              )),

              //Horizontal Gallery
              Container(
                  child: Column(
                children: [
                  //Vertical
                  ListView(
                    shrinkWrap: true,
                    children: const [
                      VertD(),
                    ],
                  ),
                ],
              )),
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
      ));
}

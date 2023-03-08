import 'package:flutter/material.dart';
import 'package:vetpet/hori_gallery.dart';
import 'package:vetpet/vertical_gallery.dart';
import 'package:vetpet/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get color => null;

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/vetpet_bg.png"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ListView(
                children: <Widget>[
                  // Location Text Field
                  Container(
                      child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your location',
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
                          Vert(),
                        ],
                      ),
                    ],
                  )),
                ],
              )),
        ),
      );
}

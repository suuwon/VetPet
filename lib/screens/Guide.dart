import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:vetpet/screens/Details.dart';
import 'package:vetpet/screens/HomeScreen.dart';
import 'package:vetpet/vertical_gallery.dart';
import 'package:vetpet/screens/Guide.dart';
import 'package:vetpet/screens/home.dart';
import 'package:vetpet/screens/About.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
          padding: const EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: Text(
                  'A Guide to An Easy Feline Potty Training',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                // Image
              ),
              Container(
                margin: new EdgeInsets.fromLTRB(10, 50, 10, 0),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  'assets/images/bombay_cat.jpg',
                  height: 300,
                ),
              ),
              //Instructions
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(30, 30, 10, 0),
                child: Text(
                  'HERE ARE SOME STEPS YOU CAN TAKE TO POTTY TRAIN YOUR CAT:',
                  style: TextStyle(fontSize: 21, fontStyle: FontStyle.italic),
                ),
              ),
              //Step 1
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: Text(
                  '1. PROVIDE A LITTER BOX: PLACE A LITTER BOX IN AN EASILY ACCESSIBLE LOCATION FOR YOUR CAT. MAKE SURE THE LITTER BOX IS LARGE ENOUGH FOR YOU CAT TO MOVE AROUND COMFORTABLY.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              //Step 2
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 12, 10, 0),
                child: Text(
                  '2. USE THE RIGHT LITTER: EXPERIMENT WITH DIFFERENT TYPES OF LITTER (E.G. CLAY, CRYSTAL, OR BIODEGRADABLE) TO FIND ONE THAT YOUR CAT PREFERS. AVOID SCENTED LITTERS, AS THEY MAY BE TOO STRONG FOR YOUR CAT\'S SENSITIVE NOSE.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              //Step 3
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 12, 10, 0),
                child: Text(
                  '3. SHOW YOUR CAT WHERE TO GO: GENTLY PLACE YOUR CAT IN THE LITTER BOX AFTER MEALS OR WHEN YOU SUSPECT THEY NEED TO GO. YOU CAN ALSO USE A TREAT TO ENCOURAGE THEM TO INVESTIGATE THE LITTER BOX.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              //Step 4
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 12, 10, 0),
                child: Text(
                  '4. CLEAN THE LITTER BOX FREQUENTLY: KEEP THE LITTER BOX CLEAN AND FRESH BY SCOOPING IT OUT AT LEAST ONCE A DAY AND COMPLETELY CHANGING THE LITTER AT LEAST ONCE A WEEK.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              //Step 5
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 12, 10, 0),
                child: Text(
                  '5. BE PATIENT: POTTY TRAINING A CAT CAN TAKE TIME AND PATIENCE. IF YOUR CAT HAS AN ACCIDENT OUTSIDE OF THE LITTER BOX, DO NOT SCOLD THEM. INSTEAD, CLEAN UP THE ACCIDENT AND TRY AGAIN LATER.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              //Step 6
              Container(
                alignment: Alignment.center,
                padding: new EdgeInsets.fromLTRB(10, 12, 10, 30),
                child: Text(
                  '6. REWARD YOUR CAT: WHEN YOUR CAT USES THE LITTER BOX, GIVE THEM A TREAT OR PRAISE TO REINFORCE THE POSITIVE BEHAVIOUR.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                'GUIDE',
                style: TextStyle(fontSize: 24),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Guide()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}

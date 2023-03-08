import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:vetpet/screens/Details.dart';
import 'package:vetpet/screens/HomeScreen.dart';
import 'package:vetpet/vertical_gallery.dart';
import 'package:vetpet/screens/Guide.dart';
import 'package:vetpet/screens/home.dart';
import 'package:vetpet/screens/About.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController dogNameController = TextEditingController();
  TextEditingController dogAgeController = TextEditingController();
  TextEditingController dogBreedController = TextEditingController();

  Color buttonColor = Color(0xff8F6D34);
  Color borderColor = Color(0xffF3D06E);

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
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.fromLTRB(10, 50, 10, 0),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/Japanese-Spitz.jpg',
                    height: 300,
                  ),
                ),
                //Dog Name Controller
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: dogNameController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'NAME',
                    ),
                  ),
                ),
                //Dog Age Controller
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: dogAgeController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'AGE',
                    ),
                  ),
                ),
                //Dog Breed Controller
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: dogBreedController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'BREED',
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

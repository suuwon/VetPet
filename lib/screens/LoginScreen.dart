import 'package:flutter/material.dart';
import 'package:vetpet/main.dart';
import 'package:vetpet/screens/Details.dart';
import 'package:vetpet/screens/HomeScreen.dart';
import 'package:vetpet/screens/Guide.dart';
import 'package:vetpet/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Color buttonColor = Color(0xff8F6D34);
  Color borderColor = Color(0xffF3D06E);

  get color => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/vetpet_bg.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                margin: new EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                // ignore: prefer_const_constructors
                child: Image.asset(
                  'assets/images/VetPet.png',
                  height: 300,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2.0),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  margin: new EdgeInsets.symmetric(vertical: 20.0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Builder(builder: (context) {
                    return ElevatedButton(
                      child: const Text('Login'),
                      // ignore: prefer_const_constructors
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(buttonColor),
                      ),

                      onPressed: () {
                        print('centrebutton');
                        // Navigator.push(context, MaterialPageRoute<void>(
                        //     //navigate to next screen
                        //     builder: (BuildContext context) {
                        //   return Scaffold(body: const HomeScreen());
                        // }));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return home();
                        }));
                      },
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}

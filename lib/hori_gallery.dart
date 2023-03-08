import 'package:flutter/material.dart';

class Hori extends StatefulWidget {
  const Hori({super.key});

  @override
  State<Hori> createState() => _HoriState();
}

class _HoriState extends State<Hori> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 200,
          color: Colors.orange[200],
        ));
  }
}

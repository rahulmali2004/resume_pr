import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class achievementspage extends StatefulWidget {
  const achievementspage({Key? key}) : super(key: key);

  @override
  State<achievementspage> createState() => _achievementspageState();
}

class _achievementspageState extends State<achievementspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "ACHIEVEMENTSPAGE",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

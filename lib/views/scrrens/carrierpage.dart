import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class carrierpage extends StatefulWidget {
  const carrierpage({Key? key}) : super(key: key);

  @override
  State<carrierpage> createState() => _carrierpageState();
}

class _carrierpageState extends State<carrierpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "CARRIER",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

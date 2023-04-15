import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class technicalpage extends StatefulWidget {
  const technicalpage({Key? key}) : super(key: key);

  @override
  State<technicalpage> createState() => _technicalpageState();
}

class _technicalpageState extends State<technicalpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "TECHNICAL",
          style: TextStyle(
            fontWeight: FontWeight.bold,
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

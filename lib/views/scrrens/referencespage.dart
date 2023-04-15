import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class referencespage extends StatefulWidget {
  const referencespage({Key? key}) : super(key: key);

  @override
  State<referencespage> createState() => _referencespageState();
}

class _referencespageState extends State<referencespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "REFERENCES",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

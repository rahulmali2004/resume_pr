import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class declarationpage extends StatefulWidget {
  const declarationpage({Key? key}) : super(key: key);

  @override
  State<declarationpage> createState() => _declarationpageState();
}

class _declarationpageState extends State<declarationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "DECLARATION",
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

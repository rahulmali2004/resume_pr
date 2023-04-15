import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class experiencepage extends StatefulWidget {
  const experiencepage({Key? key}) : super(key: key);

  @override
  State<experiencepage> createState() => _experiencepageState();
}

class _experiencepageState extends State<experiencepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "EXPERIENCE",
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

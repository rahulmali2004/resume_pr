import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class interestpage extends StatefulWidget {
  const interestpage({Key? key}) : super(key: key);

  @override
  State<interestpage> createState() => _interestpageState();
}

class _interestpageState extends State<interestpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "INTEREST",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

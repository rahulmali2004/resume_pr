import 'package:flutter/material.dart';
import 'package:resume_pr/views/components/iconbackpage.dart';

class educationpage extends StatefulWidget {
  const educationpage({Key? key}) : super(key: key);

  @override
  State<educationpage> createState() => _educationpageState();
}

class _educationpageState extends State<educationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "EDUCATION",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
    );
  }
}

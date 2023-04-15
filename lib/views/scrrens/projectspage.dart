import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class projectspage extends StatefulWidget {
  const projectspage({Key? key}) : super(key: key);

  @override
  State<projectspage> createState() => _projectspageState();
}

class _projectspageState extends State<projectspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "PROJECTS",
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

import 'package:flutter/material.dart';
import 'package:resume_pr/utils/routes.dart';
import 'package:resume_pr/views/scrrens/Achievementspage.dart';
import 'package:resume_pr/views/scrrens/Interestpage.dart';
import 'package:resume_pr/views/scrrens/Technicalpage.dart';
import 'package:resume_pr/views/scrrens/carrierpage.dart';
import 'package:resume_pr/views/scrrens/contactpage.dart';
import 'package:resume_pr/views/scrrens/declarationpage.dart';
import 'package:resume_pr/views/scrrens/educationpage.dart';
import 'package:resume_pr/views/scrrens/experiencepage.dart';
import 'package:resume_pr/views/scrrens/homepage.dart';
import 'package:resume_pr/views/scrrens/personalpage.dart';
import 'package:resume_pr/views/scrrens/projectspage.dart';
import 'package:resume_pr/views/scrrens/referencespage.dart';
import 'package:resume_pr/views/scrrens/workspace.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      routes: {
        Myroutes.homepage: (context) => homepage(),
        Myroutes.workspace: (context) => workspace(),
        Myroutes.buildoption[0].route: (context) => const contactpage(),
        Myroutes.buildoption[1].route: (context) => const carrierpage(),
        Myroutes.buildoption[2].route: (context) => const personalpage(),
        Myroutes.buildoption[3].route: (context) => const educationpage(),
        Myroutes.buildoption[4].route: (context) => const experiencepage(),
        Myroutes.buildoption[5].route: (context) => const technicalpage(),
        Myroutes.buildoption[6].route: (context) => const interestpage(),
        Myroutes.buildoption[7].route: (context) => const projectspage(),
        Myroutes.buildoption[8].route: (context) => const achievementspage(),
        Myroutes.buildoption[9].route: (context) => const referencespage(),
        Myroutes.buildoption[10].route: (context) => const declarationpage(),
      },
    );
  }
}

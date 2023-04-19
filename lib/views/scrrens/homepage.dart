import 'package:flutter/material.dart';
import 'package:resume_pr/utils/icons.dart';
import 'package:resume_pr/utils/routes.dart';
import 'package:resume_pr/views/scrrens/workspace.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
        toolbarHeight: 150,
        title: Column(
          children: [
            Text(
              "Resume Bulider",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: s.height * 0.1,
            ),
            Text(
              "RESUMES",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              myicons + "open-cardboard-box.png",
              height: s.height * 0.1,
            ),
            Text(
              "No Resume\n Create New Resume",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Myroutes.workspace);
        },
        tooltip: "Create New Resume",
        child: const Icon(Icons.add),
      ),
    );
  }
}

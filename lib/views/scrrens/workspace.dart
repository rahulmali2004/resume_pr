import 'package:flutter/material.dart';
import 'package:resume_pr/utils/routes.dart';
import 'package:resume_pr/utils/theme.dart';
import 'package:resume_pr/views/scrrens/pdfpage.dart';

class workspace extends StatefulWidget {
  const workspace({Key? key}) : super(key: key);

  @override
  State<workspace> createState() => _workspaceState();
}

class _workspaceState extends State<workspace> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("PDF_page");
            },
            icon: Icon(Icons.picture_as_pdf),
            color: Colors.white,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text("Resume workspace", style: appBarTitlestyle),
        backgroundColor: Color(0xff1D2939),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: s.width,
              decoration: BoxDecoration(
                color: Color(0xff1D2939),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Build option",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Column(
                    children: Myroutes.buildoption
                        .map((e) => Container(
                              padding: EdgeInsets.all(7),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset(
                                    e.icon,
                                    height: s.height * 0.06,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    e.name,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed(e.route);
                                      },
                                      icon:
                                          const Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

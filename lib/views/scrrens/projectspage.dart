import 'package:flutter/material.dart';

import '../../modals/globals_page.dart';
import '../components/iconbackpage.dart';

class projectspage extends StatefulWidget {
  const projectspage({Key? key}) : super(key: key);

  @override
  State<projectspage> createState() => _projectspageState();
}

class _projectspageState extends State<projectspage> {
  String projeects = "";
  GlobalKey<FormState> formkey = GlobalKey();
  bool c_programming = false;
  bool dart = false;
  bool flutter = false;

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
        backgroundColor: Color(0xff1D2939),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: const Text(
                          "Project Title",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Resume Builder App",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: OutlineInputBorder(),
                            ),
                            onSaved: (val) {
                              Global.project = val;
                            },
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Resume Builder App";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Technologies",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                          CheckboxListTile(
                              value: c_programming,
                              title: Text(
                                "C Programming",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 18,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (val) {
                                setState(() {
                                  c_programming = val!;
                                  setState(() {
                                    c_programming = val!;
                                    if (c_programming == true) {
                                      if (!Global.projects.contains("C programming")) {
                                        Global.projects.add("C programming");
                                      }
                                    }
                                  });
                                });
                              }
                              ),
                          CheckboxListTile(
                              value: dart,
                              title: Text(
                                "Dart",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 18,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (val) {
                                setState(() {
                                  dart = val!;
                                  setState(() {
                                    dart = val!;
                                    if (dart == true) {
                                      if (!Global.projects.contains("Dart")) {
                                        Global.projects.add("Dart");
                                      }
                                    }
                                  });
                                });
                              }),
                          CheckboxListTile(
                              value: flutter,
                              title: Text(
                                "Flutter",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 18,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (val) {
                                setState(() {
                                  flutter = val!;
                                  setState(() {
                                    flutter = val!;
                                    if (flutter == true) {
                                      if (!Global.projects.contains("Flutter")) {
                                        Global.projects.add("Flutter");
                                      }
                                    }
                                  });
                                });
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Roles",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText:
                                        "Organize team members, Code analysis",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade400),
                                    border: OutlineInputBorder(),
                                  ),
                                  onSaved: (val) {
                                    Global.project1 = val;
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Roles";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Technologies",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "5 - Programmers",
                                          hintStyle: TextStyle(
                                              color: Colors.grey.shade400),
                                          border: OutlineInputBorder(),
                                        ),
                                        onSaved: (val) {
                                          Global.project2 = val;
                                        },
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter technologies";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Project Descripation",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Enter Your Project Descripation",
                                                hintStyle: TextStyle(
                                                    color:
                                                        Colors.grey.shade400),
                                                border: OutlineInputBorder(),
                                              ),
                                              onSaved: (val) {
                                                Global.project3 = val;
                                              },
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Project descripation";
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      formkey.currentState!.validate();
                                                      formkey.currentState!.save();
                                                    },
                                                    child: const Text("Save")),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        Global.project= Global.project1 =
                                                            Global.project2 = Global.project3 = null;
                                                        formkey.currentState!.reset();
                                                      });
                                                    },
                                                    child: const Text("Reset")),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}

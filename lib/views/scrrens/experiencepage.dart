import 'package:flutter/material.dart';

import '../../modals/globals_page.dart';
import '../components/iconbackpage.dart';
import '../components/mysnackbar.dart';

class experiencepage extends StatefulWidget {
  const experiencepage({Key? key}) : super(key: key);

  @override
  State<experiencepage> createState() => _experiencepageState();
}

class _experiencepageState extends State<experiencepage> {
  String experience = "";
  String? previously;
  String? experience5;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
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
        backgroundColor: Color(0xff1D2939),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Company Name",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 20),
                            hintText: "  Artificial intelligence",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (val) {
                            Global.exprience = val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Company name";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "School/Collage/Institute",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                hintText: "  Data Science",
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (val) {
                                Global.exprience1 = val;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter company";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Roles(Optional)",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 50),
                                hintText:
                                    " Working with team members to\n come with new concepts and\n product analysis",
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                border: OutlineInputBorder(),
                              ),
                              onSaved: (val) {
                                Global.exprience2 = val;
                              },
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter Roles";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Employed Status",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      RadioListTile(
                          value: "Previously Employed",
                          groupValue: Global.previously,
                          title: Text(
                            "Previously Employed",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                          onChanged: (val) {
                            setState(() {
                              Global.previously = val;
                            });
                          }),
                      RadioListTile(
                          value: "Currently Employed",
                          title: Text(
                            "Currently Employed",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                          groupValue: Global.previously,
                          onChanged: (val) {
                            setState(() {
                              Global.previously = val;
                            });
                          }),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: s.height * 0.12,
                            width: s.width * 0.38,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                children: [
                                  Text(
                                    "Date Joined",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextFormField(
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      Global.exprience3 = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Joined/exit date";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding: const EdgeInsets.all(5),
                                      hintText: "DD/MM/YYYY",
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: s.height * 0.12,
                            width: s.width * 0.38,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                children: [
                                  Text(
                                    "Data Exit",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextFormField(
                                    onSaved: (val) {
                                      Global.exprience3 = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter joined/exit date";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding: const EdgeInsets.all(5),
                                      hintText: "DD/MM/YYYY",
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
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
                                      Global.exprience =Global.exprience1 =
                                          Global.exprience2 = Global.previously =
                                          Global.exprience3 = null;
                                      formkey.currentState!.reset();
                                    });
                                  },
                                  child: const Text("Reset")),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}

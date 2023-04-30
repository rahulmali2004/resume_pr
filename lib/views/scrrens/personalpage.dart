import 'package:flutter/material.dart';
import 'package:resume_pr/views/components/iconbackpage.dart';

import '../../modals/globals_page.dart';

class personalpage extends StatefulWidget {
  const personalpage({Key? key}) : super(key: key);

  @override
  State<personalpage> createState() => _personalpageState();
}

class _personalpageState extends State<personalpage> {
  String? maritstatus;
  bool Elanguages = false;
  bool Hlanguages = false;
  bool Glanguages = false;
  String nationality = "";
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "PERSONAL DETAILS",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D2939),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Date of Birth",
                    style: TextStyle(
                      color: Color(0xff1D2939),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    onSaved: (val) {
                      Global.b1 = val;
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter designation";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(5),
                      hintText: "DD/MM/YYYY",
                      hintStyle:
                          TextStyle(color: Colors.grey.shade400, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Marital Status",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff1D2939),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RadioListTile(
                      value: "Single",
                      groupValue: Global.maritstatus,
                      title: Text("Single"),
                      onChanged: (val) {
                        setState(() {
                          Global.maritstatus = val;
                        });
                      }
                      ),
                  RadioListTile(
                      value: "Married",
                      title: Text("Marride"),
                      groupValue: Global.maritstatus,
                      onChanged: (val) {
                        setState(() {
                         Global. maritstatus = val;
                        });
                      }),
                  SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Language Known",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1D2939)),
                  ),
                  CheckboxListTile(
                      value: Elanguages,
                      title: const Text("English"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          Elanguages = val!;
                          setState(() {
                            Elanguages = val!;
                            if (Elanguages == true) {
                              if (!Global.language.contains("English")) {
                                Global.language.add("English");
                              }
                            }
                          });
                        });
                      }),
                  CheckboxListTile(
                      value: Hlanguages,
                      title: const Text("Hindi"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          Hlanguages = val!;
                          setState(() {
                            Hlanguages = val!;
                            if (Hlanguages == true) {
                              if (!Global.language.contains("Hindi")) {
                                Global.language.add("Hindi");
                              }
                            }
                          });
                        });
                      }),
                  CheckboxListTile(
                      value: Glanguages,
                      title: const Text("Gujarati"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          Glanguages = val!;
                          setState(() {
                            Glanguages = val!;
                            if (Glanguages == true) {
                              if (!Global.language.contains("Gujarati")) {
                                Global.language.add("Gujarati");
                              }
                            }
                          });
                        });
                      }),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Nationality",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1D2939)),
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
                            hintText: "Indian",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (val) {
                            Global. nationality= val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Nationality";
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
                                  Global.b1 = Global.maritstatus =
                                   Global.nationality = null;
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
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}

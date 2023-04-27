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
  bool Englishcheckbox = false;
  bool Hindicheckbox = false;
  bool Gujaraticheckbox = false;
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
        backgroundColor: Colors.blue,
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
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: "DD/"),
                          onSaved: (val) {
                            Global.b1 = val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Your Name";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: "MM/"),
                          onSaved: (val) {
                            Global.b2 = val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Your Name";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: "YYYY"),
                          onSaved: (val) {
                            Global.b3 = val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Your Name";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Marital Status",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RadioListTile(
                      value: "Single",
                      groupValue: maritstatus,
                      title: Text("Single"),
                      onChanged: (val) {
                        setState(() {
                          maritstatus = val;
                        });
                      }),
                  RadioListTile(
                      value: "Married",
                      title: Text("Marride"),
                      groupValue: maritstatus,
                      onChanged: (val) {
                        setState(() {
                          maritstatus = val;
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
                        color: Colors.blue),
                  ),
                  CheckboxListTile(
                      value: Englishcheckbox,
                      title: const Text("English"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          Englishcheckbox = val!;
                        });
                      }),
                  CheckboxListTile(
                      value: Hindicheckbox,
                      title: const Text("Hindi"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          Hindicheckbox = val!;
                        });
                      }),
                  CheckboxListTile(
                      value: Gujaraticheckbox,
                      title: const Text("Gujarati"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          Gujaraticheckbox = val!;
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
                            hintText: "Indian",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (val) {
                            nationality = val!;
                          },
                        ),
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
                                    Global.b1= Global.b2 =
                                        Global.b3 = null;
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

import 'package:flutter/material.dart';

import '../../modals/globals_page.dart';
import '../components/iconbackpage.dart';

class carrierpage extends StatefulWidget {
  const carrierpage({Key? key}) : super(key: key);

  @override
  State<carrierpage> createState() => _carrierpageState();
}

class _carrierpageState extends State<carrierpage> {
  String carrier = "";
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "CARRIER",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
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
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Carrier Objective",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1D2939),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: TextFormField(
                          maxLength: 7,
                          decoration: InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 70),
                            hintText: "Descripation",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (val) {
                            Global.carrier1 = val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Descripation";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Current Designation(Experienced  Candidate)",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff1D2939),
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
                            hintText: "Software Engineer",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (val) {
                            Global.carrier2 = val;
                          },
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter designation";
                            } else {
                              return null;
                            }
                          },
                        ),
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
                                  Global.carrier1 = Global.carrier2 = null;
                                  formkey.currentState!.reset();
                                });
                              },
                              child: const Text("Reset")),
                        ],
                      ),
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

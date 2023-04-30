import 'package:flutter/material.dart';
import 'package:resume_pr/modals/globals_page.dart';
import 'package:resume_pr/views/components/mysnackbar.dart';

import '../components/iconbackpage.dart';

class declarationpage extends StatefulWidget {
  const declarationpage({Key? key}) : super(key: key);

  @override
  State<declarationpage> createState() => _declarationpageState();
}

class _declarationpageState extends State<declarationpage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool dec = false;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "DECLARATION",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D2939),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: s.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Declaration",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Switch(
                          value: dec,
                          onChanged: (value) {
                            setState(() {
                              dec = value;
                            });
                          },
                        ),
                      ],
                    ),
                    (dec)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.radar, size: s.height * 0.1),
                              SizedBox(height: s.height * 0.04),
                              TextFormField(
                                initialValue: Global.declaration,
                                textInputAction: TextInputAction.next,
                                onSaved: (val) {
                                  Global.declaration = val;
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Declaration";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  contentPadding: const EdgeInsets.all(10),
                                  hintText: "Descripation",
                                  hintStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ),
                              SizedBox(height: s.height * 0.04),
                              Container(
                                height: 2,
                                width: s.width,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(height: s.height * 0.02),
                              Row(
                                children: [
                                  Container(
                                    height: s.height * 0.17,
                                    width: s.width * 0.38,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Date",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          TextFormField(
                                            initialValue: (Global.declaration ==
                                                    null)
                                                ? null
                                                : Global.declaration1.toString(),
                                            onSaved: (val) {
                                              Global.declaration1 = val;
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter Declaration";
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.only(left: 10),
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
                                  SizedBox(width: s.width * .01),
                                  Container(
                                    height: s.height * 0.17,
                                    width: s.width * 0.38,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Place(Interview\nvenue/city)",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          TextFormField(
                                            initialValue: Global.declaration2,
                                            onSaved: (val) {
                                              Global.declaration2 = val;
                                            },
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter Declaration";
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.only(left: 10),
                                              hintText: "Eg. Surat",
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
                              SizedBox(
                                height: s.height * 0.008,
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
                                          Global.declaration =Global.declaration1 =
                                              Global.declaration2 =null;
                                          formkey.currentState!.reset();
                                        });
                                      },
                                      child: const Text("Reset")),
                                ],
                              ),
                            ],
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}

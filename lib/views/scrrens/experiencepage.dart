import 'package:flutter/material.dart';

import '../components/iconbackpage.dart';

class experiencepage extends StatefulWidget {
  const experiencepage({Key? key}) : super(key: key);

  @override
  State<experiencepage> createState() => _experiencepageState();
}

class _experiencepageState extends State<experiencepage> {
  String experience = "";
  String? previously;

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
                          experience = val!;
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
                              experience = val!;
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
                              experience = val!;
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
                        groupValue: previously,
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
                            previously = val;
                          });
                        }),
                    RadioListTile(
                        value: "",
                        title: Text(
                            "Currently Employed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 18,
                          ),
                        ),
                        groupValue: previously,
                        onChanged: (val) {
                          setState(() {
                            previously = val;
                          });
                        }),
                    TextFormField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [

                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}

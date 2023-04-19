import 'package:flutter/material.dart';
import 'package:resume_pr/views/components/iconbackpage.dart';

class educationpage extends StatefulWidget {
  const educationpage({Key? key}) : super(key: key);

  @override
  State<educationpage> createState() => _educationpageState();
}

class _educationpageState extends State<educationpage> {
  GlobalKey<FormState> formkey = GlobalKey();
  String course = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "EDUCATION",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
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
                          "Course/Degree",
                          style: TextStyle(
                              fontSize: 16,
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
                              hintText: "B . Tech Information technology",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: OutlineInputBorder(),
                            ),
                            onSaved: (val) {
                              course = val!;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "School/Collage/Institute",
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
                          Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Bhagwan Mahavir University",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade400),
                                  border: OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  course = val!;
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "School/Collage/Institute",
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
                              Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "70% (or) 7.0 CGPA",
                                      hintStyle:
                                          TextStyle(color: Colors.grey.shade400),
                                      border: OutlineInputBorder(),
                                    ),
                                    onSaved: (val) {
                                      course = val!;
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Year of Pass",
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
                                        hintText: "2019",
                                        hintStyle:
                                            TextStyle(color: Colors.grey.shade400),
                                        border: OutlineInputBorder(),
                                      ),
                                      onSaved: (val) {
                                        course = val!;
                                      },
                                    ),
                                  ],
                                ),
                              ),
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
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}

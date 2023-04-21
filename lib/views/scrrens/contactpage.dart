import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_pr/utils/icons.dart';
import 'package:resume_pr/utils/theme.dart';
import 'package:resume_pr/views/components/iconbackpage.dart';

class contactpage extends StatefulWidget {
  const contactpage({Key? key}) : super(key: key);

  @override
  State<contactpage> createState() => _contactpageState();
}

class _contactpageState extends State<contactpage> {
  int index = 0;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "CONTACT",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Contact",
                    style: appBarTitlestyle,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: index == 0 ? 3 : 0,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Photo",
                    style: appBarTitlestyle,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: index == 1 ? 3 : 0,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                  ),
                ),
              ))
            ],
          )),
          Expanded(
              flex: 15,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: IndexedStack(
                  index: index,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(18),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.person,
                                      size: 45,
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 7,
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          labelText: "Name",
                                          hintText: "Enter The Name"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.email,
                                      size: 45,
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 7,
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          labelText: "Email id",
                                          hintText: "Enter The Email id"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Icon(
                                    Icons.phone,
                                    size: 45,
                                  )),
                                  const Spacer(),
                                  Expanded(
                                    flex: 7,
                                    child: TextFormField(
                                      maxLength: 10,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      keyboardType: TextInputType.phone,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          labelText: "Mobile Number",
                                          prefixText: "+91 ",
                                          hintText: "Mobile Number"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.location_on,
                                      size: 45,
                                    ),
                                  ),
                                  Spacer(),
                                  Expanded(
                                    flex: 7,
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                          labelText: "Address",
                                          hintText: "Enter The Address"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.03,
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: s.height * 0.03,
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Photo",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}

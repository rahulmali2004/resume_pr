import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_pr/utils/icons.dart';
import 'package:resume_pr/utils/theme.dart';
import 'package:resume_pr/views/components/iconbackpage.dart';
import 'dart:io';

import '../../modals/globals_page.dart';
import '../components/mysnackbar.dart';

class contactpage extends StatefulWidget {
  const contactpage({Key? key}) : super(key: key);

  @override
  State<contactpage> createState() => _contactpageState();
}

class _contactpageState extends State<contactpage> {
  int index = 0;
  bool hide = true;

  GlobalKey<FormState> formkey = GlobalKey();

  ImagePicker picker = ImagePicker();

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
                )),
              ),
              ],
            )),
            Expanded(
              flex: 15,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: IndexedStack(
                  index: index,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(18),
                      child: Form(
                        key: formkey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      myicons + "user.png",
                                      height: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 10,
                                      child: TextFormField(
                                        initialValue: Global.name,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Please Enter Name...";
                                          } else {
                                            return null;
                                          }
                                        },
                                        onSaved: (val) {
                                          Global.name = val;
                                        },
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                          hintText: "Enter Name",
                                          labelText: "Name",
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.mail),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    initialValue: Global.email,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Email_Id...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.email = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Enter email",
                                      labelText: "Email_id",
                                    ),
                                  ))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.mobile_friendly),
                                  Expanded(
                                      child: TextFormField(
                                    maxLength: 10,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    initialValue: (Global.contact == null)
                                        ? null
                                        : Global.contact.toString(),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Contact Number...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.contact = int.parse(val!);
                                    },
                                    decoration: const InputDecoration(
                                      hintText: "Enter Mobile Number...",
                                      labelText: "Mobile No.",
                                      prefixText: "+91",
                                    ),
                                  ))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    initialValue: Global.a1,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Address...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.a1 = val;
                                    },
                                    onFieldSubmitted: (val) {
                                      if (formkey.currentState!.validate()) {
                                        formkey.currentState!.save();

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(mySnackBar(
                                          text: "Successfully Validated...",
                                          color: Colors.blue,
                                        ));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(mySnackBar(
                                          text: "Unsucessfully Validated...",
                                          color: Colors.red,
                                        ));
                                      }
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      labelText: "Enter Address line a1",
                                    ),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(flex: 10, child: TextFormField()),
                                ],
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(flex: 10, child: TextFormField()),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (formkey.currentState!.validate()) {
                                          formkey.currentState!.save();

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(mySnackBar(
                                            text: "Sucessfully Validated...",
                                            color: Colors.blue,
                                          ));
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(mySnackBar(
                                            text: "Unsucessfully Validated...",
                                            color: Colors.red,
                                          ));
                                        }
                                      });
                                    },
                                    child: const Text("SAVE"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        formkey.currentState!.reset();

                                        Global.name = Global.email =
                                            Global.contact = Global.a1 =
                                                Global.a2 = Global.a3 = null;
                                      });
                                    },
                                    child: const Text("RESET"),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              color: Colors.white,
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 50,
                    foregroundImage: (Global.image != null)
                        ? FileImage(Global.image!)
                        : null,
                    child: const Text("ADD"),
                  ),
                  FloatingActionButton(onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Select the Method..."),
                              actions: [
                                TextButton.icon(
                                  onPressed: () async {
                                    Navigator.of(context).pop();

                                    XFile? img = await picker.pickImage(
                                        source: ImageSource.camera);

                                    if (img != null) {
                                      setState(() {
                                        Global.image = File(img.path);
                                      });
                                    }
                                    ;
                                  },
                                  label: const Text("Camera"),
                                  icon: const Icon(Icons.camera_alt),
                                ),
                                TextButton.icon(
                                  onPressed: () async {
                                    Navigator.of(context).pop();

                                    XFile? img = await picker.pickImage(
                                        source: ImageSource.gallery);

                                    if (img != null) {
                                      setState(() {
                                        Global.image = File(img.path);
                                      });
                                    }
                                  },
                                  label: const Text("Gallery"),
                                  icon: const Icon(Icons.image),
                                ),
                              ],
                            ));
                  },
                    mini: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.camera),
                  ),
                ],
              ),
            ),
          ],
        ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}

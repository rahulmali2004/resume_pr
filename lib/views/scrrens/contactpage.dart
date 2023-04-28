import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_pr/modals/globals_page.dart';
import 'package:resume_pr/utils/theme.dart';

import '../../utils/icons.dart';
import '../components/iconbackpage.dart';

class contactpage extends StatefulWidget {
  const contactpage({Key? key}) : super(key: key);

  @override
  State<contactpage> createState() => _contactpageState();
}

class _contactpageState extends State<contactpage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int index = 0;
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Contact Info",
          style: appBarTitlestyle,
        ),
        backgroundColor: Color(0xff1D2939),
        centerTitle: true,
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
                      height: s.height * 0.12,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 0 ? 3 : 0,
                            color: Colors.white,
                          ),
                        ),
                        color: Color(0xff1D2939),
                      ),
                      child: const Text(
                        "Contact Detail",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: s.height * 0.12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 1 ? 3 : 0,
                            color: Colors.white,
                          ),
                        ),
                        color: Color(0xff1D2939),
                      ),
                      child: const Text(
                        "Profile Photo",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: IndexedStack(
              index: index,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    // height: 5,
                    padding: EdgeInsets.all(20),
                    width: s.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: formkey,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Name",
                                        labelText: "Name",
                                        border: UnderlineInputBorder()),
                                    onSaved: (val) {
                                      Global.name = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Your Name";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(child: Icon(Icons.mail)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Mail",
                                        labelText: "Mail",
                                        border: UnderlineInputBorder()),
                                    onSaved: (val) {
                                      Global.email = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Mail";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(child: Icon(Icons.call)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    maxLength: 10,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.phone,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Phone Number",
                                        labelText: "Phone",
                                        prefixText: "+91",
                                        border: UnderlineInputBorder()),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Phone Number";
                                      } else if (val!.length < 10) {
                                        return "Invalid Number";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Global.contact = int.parse(val!);
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(child: Icon(Icons.location_pin)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Address",
                                        border: UnderlineInputBorder()),
                                    onSaved: (val) {
                                      Global.a1 = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: SizedBox(
                                    width: 8,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    onSaved: (val) {
                                      Global.a2 = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Address Line 1",
                                        border: UnderlineInputBorder()),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: SizedBox(
                                    width: 8,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    onSaved: (val) {
                                      Global.a3 = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Address Line 2",
                                        border: UnderlineInputBorder()),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
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
                                            Global.name = Global.a1 =
                                                Global.email = Global.a2 =
                                                    Global.a3 =
                                                        Global.contact = null;
                                            formkey.currentState!.reset();
                                          });
                                        },
                                        child: const Text("Reset")),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
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
                        radius: 70,
                        foregroundImage: (Global.image != null)
                            ? FileImage(Global.image!)
                            : null,
                        child: const Text("ADD"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
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
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}

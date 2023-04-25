import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../modals/globals_page.dart';
import '../components/iconbackpage.dart';

class achievementspage extends StatefulWidget {
  const achievementspage({Key? key}) : super(key: key);

  @override
  State<achievementspage> createState() => _achievementspageState();
}

 class _achievementspageState extends State<achievementspage> {
//   String achiev = "";

  bool achiev = true;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "ACHIEVEMENTSPAGE",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Enter Achievements",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ),
                ...Global.achiev
                    .map(
                      (e) => Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Exceeded Sales 17% Avearage",
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          onChanged: (val) {},
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              Global.achiev.remove(e);
                            });
                          },
                          icon: Icon(Icons.delete))
                    ],
                  ),
                )
                    .toList(),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Global.achiev.add("");
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}

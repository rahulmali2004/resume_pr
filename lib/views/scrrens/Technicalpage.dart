import 'package:flutter/material.dart';
import 'package:resume_pr/modals/globals_page.dart';

import '../components/iconbackpage.dart';

class technicalpage extends StatefulWidget {
  const technicalpage({Key? key}) : super(key: key);

  @override
  State<technicalpage> createState() => _technicalpageState();
}

class _technicalpageState extends State<technicalpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "TECHNICAL",
          style: TextStyle(
            fontWeight: FontWeight.bold,
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
                    "Enter Your Skills",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ),
                ...Global.techanical
                    .map(
                      (e) => Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "C Programming Web",
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              onChanged: (val) {},
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {});
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
                        Global.techanical.add("");
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

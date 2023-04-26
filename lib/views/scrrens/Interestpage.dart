import 'package:flutter/material.dart';

import '../../modals/globals_page.dart';
import '../components/iconbackpage.dart';

class interestpage extends StatefulWidget {
  const interestpage({Key? key}) : super(key: key);

  @override
  State<interestpage> createState() => _interestpageState();
}

class _interestpageState extends State<interestpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "INTEREST",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
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
                    "Enter Your hobbies",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ),
                ...Global.hobbies
                    .map(
                      (e) => Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Hobbies Name",
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
                        Global.hobbies.add("");
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

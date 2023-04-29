import 'package:flutter/material.dart';
import 'package:resume_pr/modals/globals_page.dart';

import '../components/iconbackpage.dart';

class interestpage extends StatefulWidget {
  const interestpage({Key? key}) : super(key: key);

  @override
  State<interestpage> createState() => _interestpageState();
}

class _interestpageState extends State<interestpage> {
  @override
  void dispose() {
    super.dispose();

    Global.myhobbiesControllers.removeWhere((element) {
      if (element.text == "") {
        print(
            "REMOVED: ${Global.myhobbiesControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return true;
      } else {
        print(
            "SKIPPED: ${Global.myhobbiesControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return false;
      }
    });

    Global.myhobbiesControllers.forEach((element) {
      Global.achiev.add("");
      Global.achiev[Global.myhobbiesControllers.indexOf(element)] =
          element.text;
    });

    Global.achiev.removeWhere((element) => element == "");

    if (Global.myhobbiesControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.myhobbiesControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (Global.myhobbiesControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.myhobbiesControllers.add(TextEditingController());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Interestpage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1D2939),
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
                    "Enter Interest",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ),
                ...List.generate(
                  Global.myhobbiesControllers.length,
                  (index) => MyhobbyTile(index: index),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Global.myhobbiesControllers
                                .add(TextEditingController());
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget MyhobbyTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: Global.myhobbiesControllers[index],
            decoration: const InputDecoration(
              hintText: "Hobbies Name",
              hintStyle: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.myhobbiesControllers.removeAt(index);
            });
          },
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ],
    );
  }
}

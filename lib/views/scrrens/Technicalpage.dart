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
  void dispose() {
    super.dispose();

    Global.mySkillsControllers.removeWhere((element) {
      if (element.text == "") {
        print("REMOVED: ${Global.mySkillsControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return true;
      } else {
        print("SKIPPED: ${Global.mySkillsControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return false;
      }
    });

    Global.mySkillsControllers.forEach((element) {
      Global.techanical.add("");
      Global.techanical[Global.mySkillsControllers.indexOf(element)] = element.text;
    });

    Global.techanical.removeWhere((element) => element == "");

    if (Global.mySkillsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.mySkillsControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (Global.mySkillsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.mySkillsControllers.add(TextEditingController());
      }
    }
  }

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
                ...List.generate(
                  Global.mySkillsControllers.length,
                      (index) => MySkillTile(index: index),
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
                            Global.mySkillsControllers.add(
                                TextEditingController());
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
  Widget MySkillTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: Global.mySkillsControllers[index],
            decoration: const InputDecoration(
              hintText: "C Programming, Web",
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.mySkillsControllers.removeAt(index);
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






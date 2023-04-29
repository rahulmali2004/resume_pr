import 'package:flutter/material.dart';
import 'package:resume_pr/modals/globals_page.dart';

import '../components/iconbackpage.dart';

class achievementspage extends StatefulWidget {
  const achievementspage({Key? key}) : super(key: key);

  @override
  State<achievementspage> createState() => _achievementspageState();
}

class _achievementspageState extends State<achievementspage> {
  @override
  void dispose() {
    super.dispose();

    Global.myachievControllers.removeWhere((element) {
      if (element.text == "") {
        print(
            "REMOVED: ${Global.myachievControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return true;
      } else {
        print(
            "SKIPPED: ${Global.myachievControllers.indexOf(element)}\t\tVALUE: ${element.text}");
        return false;
      }
    });

    Global.myachievControllers.forEach((element) {
      Global.achiev.add("");
      Global.achiev[Global.myachievControllers.indexOf(element)] = element.text;
    });

    Global.achiev.removeWhere((element) => element == "");

    if (Global.myachievControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.myachievControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (Global.myachievControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        Global.myachievControllers.add(TextEditingController());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Achievements",
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
                    "Enter achievements",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ),
                ...List.generate(
                  Global.myachievControllers.length,
                  (index) => MyachievTile(index: index),
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
                            Global.myachievControllers
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

  Widget MyachievTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: Global.myachievControllers[index],
            decoration: const InputDecoration(
              hintText: "Exceeded Sales 17% Avearage",
              hintStyle: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Global.myachievControllers.removeAt(index);
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

import 'package:flutter/material.dart';
import 'package:resume_pr/views/components/iconbackpage.dart';

class personalpage extends StatefulWidget {
  const personalpage({Key? key}) : super(key: key);

  @override
  State<personalpage> createState() => _personalpageState();
}

class _personalpageState extends State<personalpage> {
  String? maritstatus;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "PERSONAL DETAILS",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Date of Birth",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: s.height * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "DD"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "MM"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "YYYY"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: s.height * 0.05,
              ),
              Text(
                "Marital Status",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: s.height * 0.01,
              ),
              RadioListTile(
                  value: "Single",
                  groupValue: maritstatus,
                  title: Text("Single"),
                  onChanged: (val) {
                    setState(() {
                      maritstatus = val;
                    });
                  }),
              RadioListTile(
                  value: "Married",
                  title: Text("Marride"),
                  groupValue: maritstatus,
                  onChanged: (val) {
                    setState(() {
                      maritstatus = val;
                    });
                  })
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
    );
  }
}

import 'package:flutter/material.dart';
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
    Size s = MediaQuery
        .of(context)
        .size;
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
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: (){
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
              Expanded(child: GestureDetector(
                onTap: (){
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
                 Text("Contact",style: TextStyle(
                   fontSize: 18,
                 ),),
                 Text("Photo",style: TextStyle(
                   fontSize: 18,
                 ),),
               ],
             ),
           )),
          ],
       ),
        backgroundColor: Colors.grey
    );
  }
}

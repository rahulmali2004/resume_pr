import 'package:flutter/material.dart';

Widget Mybackicon() {
  return Builder(builder: (context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      color: Colors.white,
    );
  });
}

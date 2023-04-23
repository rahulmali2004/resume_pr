import 'package:flutter/material.dart';

SnackBar mySnackBar({required String text,required Color color}){
  return SnackBar(
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    backgroundColor: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    content: Text(text),
    showCloseIcon: true,
  );
}
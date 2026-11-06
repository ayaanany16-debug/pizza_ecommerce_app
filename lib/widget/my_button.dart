import 'package:flutter/material.dart';

Widget myButton(String text, {VoidCallback? onPressed}) {
  return SizedBox(
    height: 53,
    width: 300,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: const Color(0xffFE5150),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Color(0xffFFFFFF)),
      ),
    ),
  );
}
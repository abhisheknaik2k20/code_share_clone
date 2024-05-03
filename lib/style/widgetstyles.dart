import 'package:flutter/material.dart';

OutlineInputBorder borderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(color: Colors.white),
);

ButtonStyle bs = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(
    const Color.fromARGB(255, 48, 8, 90),
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set border radius
    ),
  ),
  padding: MaterialStateProperty.all(
    const EdgeInsets.all(22),
  ),
);
List appbartext = ['Pricing', 'Login', 'Sign-up'];

ButtonStyle bs2 = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(
    Colors.transparent,
  ),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  padding: MaterialStateProperty.all(
    EdgeInsets.all(15),
  ),
);
List text1 = [
  'Code with your team',
  'Interview developers',
  'Teach people to program',
];
List text2 = [
  'Open a code_share editor, write or copy code, then share it with friends and colleagues. Pair program and troubleshoot together.',
  'Set coding tasks and observe in real-time when interviewing remotely or in person. Nobody likes writing code on a whiteboard.',
  'Share your code with students and peers then educate them. Universities and colleges around the world use code_share every day.,'
];

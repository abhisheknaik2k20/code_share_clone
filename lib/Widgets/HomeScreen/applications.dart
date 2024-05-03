import 'package:code_share/style/widgetstyles.dart';
import 'package:code_share/text/textStyle.dart';
import 'package:flutter/material.dart';

class Applications extends StatelessWidget {
  final double width;
  const Applications({
    required this.width,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: width * 0.02,
        ),
        for (int i = 0; i < text1.length; i++)
          MyWidget(
            width: width,
            text1: text1[i],
            text2: text2[i],
          ),
        SizedBox(
          width: width * 0.02,
        ),
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  final double width;
  final String text1;
  final String text2;
  const MyWidget(
      {required this.width,
      required this.text1,
      required this.text2,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: introPagetext2,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            text2,
            style: introPagetext3,
          ),
          SizedBox(
            height: 5.0,
          ),
          ElevatedButton(
            style: bs2,
            onPressed: () {},
            child: Text(
              'Start',
              style: introPagetext3,
            ),
          ),
        ],
      ),
    );
  }
}

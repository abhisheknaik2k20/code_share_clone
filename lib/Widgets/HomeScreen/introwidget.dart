import 'package:code_share/Widgets/Buttons/CustomButtons.dart';
import 'package:code_share/text/textStyle.dart';
import 'package:flutter/material.dart';

class IntroWidget extends StatefulWidget {
  final double height;
  final double width;
  const IntroWidget({required this.height, required this.width, super.key});

  @override
  State<IntroWidget> createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height * 0.55,
      width: widget.width * 0.7,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Share Code With Other Devs, in Real-Time',
            style: introPagetext1,
          ),
          Text(
            'An Online code editor for interviews, troubleshooting, teaching, & more.....',
            style: introPagetext2,
          ),
          SizedBox(
            height: widget.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myCustomButton2(
                  context,
                  'Create a Document Reference',
                  'Create a document reference to save and fetch the code from database',
                  '📤 Share Code',
                  0),
              const SizedBox(
                width: 30,
              ),
              myCustomButton2(
                  context,
                  'Enter Document Reference',
                  'Type the document reference to look for',
                  '🔎 Search Code',
                  1),
            ],
          ),
        ],
      ),
    );
  }
}

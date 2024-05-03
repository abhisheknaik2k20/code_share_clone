import 'package:flutter/cupertino.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextArea extends StatelessWidget {
  final double height;
  final double width;
  final QuillController controller;
  const TextArea(
      {required this.height,
      required this.width,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 14, 14, 14),
            ),
            color: const Color.fromARGB(255, 190, 190, 190)),
        height: height * 0.94,
        width: width,
        child: QuillEditor.basic(
          configurations: QuillEditorConfigurations(
            keyboardAppearance: Brightness.dark,
            controller: controller,
            autoFocus: true,
            showCursor: true,
            expands: true,
          ),
        ),
      ),
    );
  }
}

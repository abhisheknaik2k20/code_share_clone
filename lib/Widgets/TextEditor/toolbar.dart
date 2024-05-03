import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class ToolBar extends StatelessWidget {
  final QuillController controller;
  final String documentref;
  const ToolBar({
    required this.documentref,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuillToolbar.simple(
              configurations: QuillSimpleToolbarConfigurations(
                controller: controller,
                customButtons: [
                  QuillToolbarCustomButtonOptions(
                    icon: const Icon(
                      Icons.upload,
                    ),
                    tooltip: 'Upload/Save?',
                    onPressed: () async {
                      await FirebaseFirestore.instance
                          .collection('docs')
                          .doc(documentref)
                          .update(
                        {
                          'code': controller.document.toPlainText(),
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

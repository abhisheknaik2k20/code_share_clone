import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_share/Widgets/FetchDocs/fetch_docs.dart';
import 'package:code_share/Widgets/TextEditor/ToolBar.dart';
import 'package:code_share/Widgets/TextEditor/textArea.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextEditor extends StatefulWidget {
  final String documentRef;
  const TextEditor({required this.documentRef, super.key});

  @override
  State<TextEditor> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    settext();
    _controller.document.changes.listen((event) async {
      await FirebaseFirestore.instance
          .collection('docs')
          .doc(widget.documentRef)
          .update(
        {
          'code': _controller.document.toPlainText(),
        },
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void settext() async {
    Map<String, dynamic>? data = await fetchDocs(widget.documentRef);
    setState(() {
      _controller.document.insert(0, data['code']);
      isLoading = false;
    });
  }

  final _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 159, 140),
      body: Column(
        children: [
          ToolBar(controller: _controller, documentref: widget.documentRef),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : TextArea(height: height, width: width, controller: _controller)
        ],
      ),
    );
  }
}

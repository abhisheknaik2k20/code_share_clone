import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_share/Widgets/AlertDialogs/alertDialog.dart';
import 'package:code_share/Widgets/TextEditor/texteditor.dart';
import 'package:flutter/material.dart';

Future<Map<String, dynamic>> fetchDocs(String docRef) async {
  DocumentSnapshot snapshot =
      await FirebaseFirestore.instance.collection('docs').doc(docRef).get();
  return snapshot.data() as Map<String, dynamic>;
}

void write_case(BuildContext context, String docRef) async {
  try {
    var documentSnapshot =
        await FirebaseFirestore.instance.collection('docs').doc(docRef).get();
    if (!documentSnapshot.exists) {
      await FirebaseFirestore.instance
          .collection('docs')
          .doc(docRef)
          .set({'code': ''});
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TextEditor(documentRef: docRef),
      ),
    );
  } catch (e) {
    print('Error searching document: $e');
  }
}

void search_case(BuildContext context, String docRef) async {
  try {
    var documentSnapshot =
        await FirebaseFirestore.instance.collection('docs').doc(docRef).get();
    if (!documentSnapshot.exists) {
      // ignore: use_build_context_synchronously
      show_failure(context);
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TextEditor(documentRef: docRef),
        ),
      );
    }
  } catch (e) {
    print('Error searching document: $e');
  }
}

import 'package:code_share/Widgets/AlertDialogs/alertDialog.dart';
import 'package:code_share/Widgets/FetchDocs/fetch_docs.dart';
import 'package:code_share/style/widgetstyles.dart';
import 'package:code_share/text/textStyle.dart';
import 'package:flutter/material.dart';

ElevatedButton myCustomButton2(
    BuildContext context, String text1, String text2, String text3, int flag) {
  return ElevatedButton(
    style: bs,
    onPressed: () {
      show_Alert(context, text1, text2, flag);
    },
    child: Text(
      text3,
      style: introPagetext2,
    ),
  );
}

TextButton createTextButton(String text) {
  return TextButton(
    onPressed: () {},
    child: Text(
      text,
      style: appbarButton,
    ),
  );
}

ElevatedButton phonewidgetButton(
    BuildContext context, TextEditingController _controller) {
  return ElevatedButton(
    style: bs,
    onPressed: () {
      write_case(context, _controller.text);
    },
    child: Text(
      'Search',
      style: introPagetext2,
    ),
  );
}

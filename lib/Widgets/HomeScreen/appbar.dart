import 'package:code_share/Widgets/Buttons/custombuttons.dart';
import 'package:code_share/style/widgetstyles.dart';
import 'package:code_share/text/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset('assets/logo.png'),
      ),
      title: Text(
        'code_share',
        style: codeshare,
      ),
      actions: [for (String text in appbartext) createTextButton(text)],
    );
  }
}

AppBar phoneAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 35, 35, 35),
    toolbarHeight: 70,
    title: Text(
      'code_share',
      style: codeshare,
    ),
  );
}

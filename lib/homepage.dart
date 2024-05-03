import 'package:code_share/Widgets/Buttons/custombuttons.dart';
import 'package:code_share/Widgets/FetchDocs/fetch_docs.dart';
import 'package:code_share/Widgets/HomeScreen/appbar.dart';
import 'package:code_share/Widgets/HomeScreen/sliverWidgets.dart';
import 'package:code_share/style/widgetstyles.dart';
import 'package:code_share/text/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage2 extends StatelessWidget {
  final double height;
  final double width;
  const HomePage2({required this.height, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    List mywidgets = returnMyListOfWidgets(height, width);
    return Scaffold(
      body: Container(
        decoration: homepageDecoration,
        child: CustomScrollView(
          slivers: [
            for (Widget widget in mywidgets) widget,
          ],
        ),
      ),
    );
  }
}

class PageLayoutBuilder extends StatelessWidget {
  const PageLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constratins) {
        if (constratins.maxWidth < 600) {
          return HomePage1();
        } else {
          return HomePage2(
              height: constratins.maxHeight, width: constratins.maxWidth);
        }
      },
    );
  }
}

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: phoneAppBar(),
      body: Container(
        color: Color.fromARGB(255, 67, 66, 66),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                controller: _controller,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[800],
                  border: borderStyle,
                  focusedBorder: borderStyle,
                  enabledBorder: borderStyle,
                  disabledBorder: borderStyle,
                  hintText:
                      'Type the document reference to look for or create ',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            phonewidgetButton(context, _controller)
          ],
        ),
      ),
    );
  }
}

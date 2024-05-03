import 'package:code_share/Widgets/HomeScreen/appbar.dart';
import 'package:code_share/Widgets/HomeScreen/applications.dart';
import 'package:code_share/Widgets/HomeScreen/footer.dart';
import 'package:code_share/Widgets/HomeScreen/introwidget.dart';
import 'package:flutter/material.dart';

List returnMyListOfWidgets(double height, double width) {
  return [
    CustomAppbar2(),
    SliverToBoxAdapter(
      child: IntroWidget(height: height, width: width),
    ),
    SliverToBoxAdapter(
      child: Image.asset(
        'assets/home.gif',
        height: height * 0.5,
      ),
    ),
    SliverToBoxAdapter(
      child: SizedBox(
        height: height * 0.1,
      ),
    ),
    SliverToBoxAdapter(
      child: Applications(
        width: width,
      ),
    ),
    SliverToBoxAdapter(
      child: SizedBox(
        height: height * 0.1,
      ),
    ),
    SliverToBoxAdapter(
      child: const Fotter(),
    )
  ];
}

import 'package:flutter/material.dart';
import 'package:preetha_nair/sections/home/homeDesktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HomeDesktop(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:preetha_nair/sections/project/projectDesktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ProjectDesktop(),
    );
  }
}
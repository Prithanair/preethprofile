import 'package:flutter/material.dart';
import 'package:preetha_nair/sections/about/desktopAbout.dart';

import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AboutDesktop(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:preetha_nair/widget/toolsTechWidget.dart';
import 'package:preetha_nair/constants.dart';

class ToolsTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Technologies I have worked with:\n"),
        Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < kTools.length; i++)
                    ToolTechWidget(
                      techName: kTools[i],
                    ),
                ],
              )
            ])
      ],
    );
  }
}

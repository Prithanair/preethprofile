import 'package:universal_html/html.dart' as html;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:preetha_nair/animations/entranceFader.dart';
import 'package:preetha_nair/constants.dart';
import 'package:preetha_nair/sections/about/about.dart';
import 'package:preetha_nair/sections/contacts/contact.dart';
import 'package:preetha_nair/sections/home/home.dart';
import 'package:preetha_nair/sections/project/projects.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController =
  ScrollController(initialScrollOffset: 25.0);
  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionListener = ItemPositionsListener.create();

  final List<String> _sectionsName = [
    "Home",
    "About",
    "Projects",
    "Contact"
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.phone,
  ];

  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Contact();
    } else if (i == 3) {
      return Projects();
    } else if (i == 4) {
      return SizedBox(
        height: 40.0,
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? _appBarTabDesktop()
          : AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          controller: _scrollController,
          thumbColor: kPrimaryColor,
          thickness: 5.0,
          child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemPositionsListener: _itemPositionListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index, IconData icon) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
      offset: Offset(0, -20),
      delay: Duration(seconds: 3),
      duration: Duration(seconds: 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          hoverColor: kPrimaryColor,
          onPressed: () => _scroll(index),
          child: Text(
            childText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    )
        : Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
          hoverColor: kPrimaryColor,
          onPressed: () => _scroll(index),
          child: ListTile(
            leading: Icon(
              icon,
              color: kPrimaryColor,
            ),
            title: Text(childText),
          )),
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
        actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        EntranceFader(
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
              onPressed: () {
                html.window.open(
                    "assets/Preetha K V_Resume.pdf",
                    "pdf");
              },
              child: Text(
                "Resume",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}
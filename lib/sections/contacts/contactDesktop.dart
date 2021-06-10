import 'package:flutter/material.dart';
import 'package:preetha_nair/animations/bottomAnimation.dart';
import 'package:preetha_nair/constants.dart';
import 'package:preetha_nair/widget/contactCard.dart';
import 'package:preetha_nair/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "\nContact",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Let's get in touch and build something together.\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetAnimator(
                child: ContactCard(
                  cardWidth:  width * 0.2,
                  cardHeight: height * 0.2,
                  contactType: kContactTitles[0],
                  contactDescription: kContactDetails[0],
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              WidgetAnimator(
                child: ContactCard(
                  cardWidth:  width * 0.2,
                  cardHeight: height * 0.2,
                  contactType: kContactTitles[1],
                  contactDescription: kContactDetails[1],
                ),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              WidgetAnimator(
                child: ContactCard(
                  cardWidth:  width * 0.2,
                  cardHeight: height * 0.2,
                  contactType: kContactTitles[2],
                  contactDescription: kContactDetails[2],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
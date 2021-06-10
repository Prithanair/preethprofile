import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:preetha_nair/animations/bottomAnimation.dart';
import 'package:preetha_nair/animations/entranceFader.dart';
import 'package:preetha_nair/constants.dart';
import 'package:preetha_nair/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(fontSize: height * 0.03, fontWeight: FontWeight.w200),
                    ),
                    EntranceFader(
                      offset: Offset(0, 0),
                      delay: Duration(seconds: 2),
                      duration: Duration(milliseconds: 800),
                      child: Image.asset(
                        "assets/hi.gif",
                        height: height * 0.05,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Preetha Nair",
                  style: GoogleFonts.cinzel(
                      fontSize: width < 1200 ? height * 0.065:height * 0.075,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1.0),
                ),
                Text("Senior Software Developer",
                  style: GoogleFonts.cinzel(
                      fontSize:
                      height * 0.03,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 4.0),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      WidgetAnimator(
                        child: SocialMediaIconBtn(
                          icon: kSocialIcons[i],
                          socialLink: kSocialLinks[i],
                          height: height * 0.035,
                          horizontalPadding: width * 0.005,
                        ),
                      )
                  ],
                )
              ],
            ),
          );
  }
}
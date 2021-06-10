import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 12,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
       TextSpan(children: [
        TextSpan(
          text: "A highly industrious & dedicated individual with a Master’s Degree in Embedded System and Wireless Technology and 9+ years of experience; earned trust of clients & team through experience and proven delivery of projects within time, budget & quality parameters \n\n",
          style: MediaQuery.of(context).size.width < 600
             ? _textStyle(fontSize, false)
             : _textStyle(fontSize + 2, false)),
       TextSpan( text : '''
* Offering 9+ Years of experience in Product Development & Design across domains like Server Applications and Security Products.
* Well versed in all phases of Software Development Lifecycle (SDLC) right from requirement analysis, documentation coding and Unit testing
* Exhibits strong technical skills in Java & C Programming; TCP/IP and Layer-2/Layer-3 Protocols Networking
* Credentials in driving mid to large-scale projects and offshore/onshore development models using Agile Scrum Methodologies
* Good communication, analytical & problem-solving skills, quick learner, self-initiative, responsive and responsible
      ''',
      style:  _textStyle(14, false),
        ),
      ]),
    );
  }
}
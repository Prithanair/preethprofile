import 'package:flutter/material.dart';
import 'package:preetha_nair/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCard extends StatefulWidget {
  final String contactType;
  final String contactDescription;
  final double cardWidth;
  final double cardHeight;
  final String backImage;
  final Widget bottomWidget;

  const ContactCard(
      {Key key,
        this.backImage,
        this.bottomWidget,
        this.contactType,
        this.contactDescription,
        this.cardWidth,
        this.cardHeight})
      : super(key: key);
  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: isHover
            ? [
            BoxShadow(
              color: kPrimaryColor.withAlpha(200),
              blurRadius: 12.0,
              offset: Offset(2.0, 3.0),
            )
            ]
                : []),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.contactType,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.025,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  widget.contactDescription,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.025,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.normal,
                      height: width >= 600 ? 2.0 : 1.5),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                widget.bottomWidget ?? Container(),
              ],
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.backImage != null
                    ? Image.asset(widget.backImage)
                    : Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

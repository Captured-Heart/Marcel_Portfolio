// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Utils/responsive.dart';

class CenterTitleWidget extends StatelessWidget {
  const CenterTitleWidget({
    Key? key,
    required this.size,
    required this.title,
    required this.subtitle,
    required this.centerTitle,
  }) : super(key: key);

  final Size size;
  final String title, subtitle, centerTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isTablet(context) ? size.width * 0.75 : size.width * 0.65,
      // height: size.height * 0.15,
      child: Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.orange[400],
                  ),
                  maxLines: 1,
                ),
                SizedBox(width: 5),
                SizedBox(
                  width: size.width * 0.03,
                  child: Divider(
                    height: 2,
                    thickness: 3,
                    color: Colors.orange[400],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            // AutoSizeText(
            //     centerTitle,
            //     style: TextStyle(
            //       fontWeight: FontWeight.w900,
            //       fontSize: 40,
            //       foreground: Paint()
            //         ..strokeWidth = 2.8
            //         ..style = PaintingStyle.stroke
            //         ..filterQuality = FilterQuality.low
            //         ..strokeMiterLimit = 20,
            //     ),
            //     maxLines: 1,
            //   ),
            Center(
              child: DefaultTextStyle(
                maxLines: 1,
                textAlign: TextAlign.center,
                style: GoogleFonts.oleoScript(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: Responsive.isDesktop(context) ? 50 : 33,
                  letterSpacing: 2.5,
                  // foreground: Paint()
                  //   ..strokeWidth = 2.8
                  //   ..style = PaintingStyle.stroke
                  //   ..filterQuality = FilterQuality.low
                  //   ..strokeMiterLimit = 20,
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      centerTitle,
                      cursor: '',
                      speed: Duration(milliseconds: 45),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 19,
              ),
            )
          ],
        ),
      ),
    );
  }
}

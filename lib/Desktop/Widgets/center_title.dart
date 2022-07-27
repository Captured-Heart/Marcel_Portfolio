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
      width:
          Responsive.isTablet(context) ? size.width * 0.75 : size.width * 0.65,
      // height: size.height * 0.15,
      child: Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: AutoSizeText(
                centerTitle,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: GoogleFonts.oleoScript(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: Responsive.isDesktop(context) ? 50 : 33,
                  letterSpacing: 2.5,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 19,
              ),
              textScaleFactor: 1.3,
            )
          ],
        ),
      ),
    );
  }
}

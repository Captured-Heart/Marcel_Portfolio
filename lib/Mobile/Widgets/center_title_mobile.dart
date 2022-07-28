import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterTitleMobile extends StatelessWidget {
  const CenterTitleMobile({
    Key? key,
    this.title,
    this.centerTitle,
    this.subtitle,
    required this.size,
  }) : super(key: key);
  final String? title, centerTitle, subtitle;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                  color: Colors.orange[400],
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                width: size.width * 0.1,
                child: Divider(
                  height: 2,
                  thickness: 3,
                  color: Colors.orange[400],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            centerTitle!,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: GoogleFonts.oleoScript(
              fontWeight: FontWeight.w200,
              color: Colors.black,
              fontSize: 24,
              letterSpacing: 2.5,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle!,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

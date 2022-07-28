import 'package:animated_text_kit/animated_text_kit.dart';
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
          DefaultTextStyle(
            maxLines: 1,
            textAlign: TextAlign.center,
            style: GoogleFonts.oleoScript(
              fontWeight: FontWeight.w200,
              color: Colors.black,
              fontSize: 24,
              letterSpacing: 2.5,
            ),

            // TextStyle(
            //   fontWeight: FontWeight.w200,
            //   fontSize: 26,
            //   foreground: Paint()
            //     ..strokeWidth = 3.2
            //     ..style = PaintingStyle.stroke
            //     ..filterQuality = FilterQuality.low
            //     ..strokeMiterLimit = 10,
            // ),
            child: AnimatedTextKit(repeatForever: true, animatedTexts: [
              TypewriterAnimatedText(
                centerTitle!,
                cursor: '',
                speed: const Duration(milliseconds: 45),
              ),
            ]),
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
          ),
        ],
      ),
    );
  }
}

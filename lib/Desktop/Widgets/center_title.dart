// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      width: size.width * 0.45,
      // height: size.height * 0.15,
      child: Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
                color: Colors.orange[400],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              centerTitle,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                foreground: Paint()
                  ..strokeWidth = 2.8
                  ..style = PaintingStyle.stroke
                  ..filterQuality = FilterQuality.low
                  ..strokeMiterLimit = 20,
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
                  fontSize: 25,
                  color: Colors.orange[400],
                ),
              ),
              SizedBox(width: 5),
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
          SizedBox(
            height: 10,
          ),
          AutoSizeText(
            centerTitle!,
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 28,
              foreground: Paint()
                ..strokeWidth = 3.2
                ..style = PaintingStyle.stroke
                ..filterQuality = FilterQuality.low
                ..strokeMiterLimit = 10,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subtitle!,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}


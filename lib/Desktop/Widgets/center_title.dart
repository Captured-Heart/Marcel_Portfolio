// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class CenterTitleWidget extends StatelessWidget {
  const CenterTitleWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.3,
      height: size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Services',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            lorem(paragraphs: 1, words: 20),
          )
        ],
      ),
    );
  }
}

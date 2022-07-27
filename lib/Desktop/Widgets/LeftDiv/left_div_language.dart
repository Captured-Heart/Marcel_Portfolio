// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LeftDivLanguages extends StatelessWidget {
  const LeftDivLanguages({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.19,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children:  [
          Text(
            'Languages',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          LeftDivLanguagesComponents(
            leading: 'English', size: size,
          ),
          LeftDivLanguagesComponents(
            leading: 'Igbo', size: size,
          ),
          LeftDivLanguagesComponents(
            leading: 'French', size: size,
          ),
          LeftDivLanguagesComponents(
            leading: 'Hausa',  size: size,
          ),
        ],
      ),
    );
  }
}

class LeftDivLanguagesComponents extends StatelessWidget {
  const LeftDivLanguagesComponents({
    Key? key,
    required this.leading, required this.size
  }) : super(key: key);
  final String leading;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size.width * 0.008),
      decoration: BoxDecoration(
          color: Colors.orange[300],
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(30)),
      child: AutoSizeText(
        leading,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        maxLines: 1,
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EducationDiv extends StatelessWidget {
  const EducationDiv({
    Key? key,
    required this.size,
    this.offset,
    required this.scale,
  }) : super(key: key);

  final Size size;
  final Offset? offset;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: Duration(milliseconds: 1500),
      scale: scale,
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            EducationOptions(
              size: size,
              // offset: offset!,
            ),
            SizedBox(width: size.width * 0.62, child: Divider()),
            EducationOptions(
              size: size,
              // offset: offset!,
            ),
            SizedBox(width: size.width * 0.62, child: Divider()),
            EducationOptions(
              size: size,
              // offset: offset!,
            ),
          ],
        ),
      ),
    );
  }
}

class EducationOptions extends StatelessWidget {
  const EducationOptions({
    Key? key,
    required this.size,
    //  this.offset,
  }) : super(key: key);

  final Size size;
  // final Offset ? offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.008,
        bottom: size.height * 0.02,
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      width: double.infinity,
      // height: size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.2,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Text(
                  'University of toronto',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Row(
                children: [
                  SizedBox(
                    child: Text(
                      'Student',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    width: 60,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.orange[400],
                    child: Text('June 2020 - August 2022'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Text(
                  'Certificate of web training',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Text(
                lorem(
                  paragraphs: 2,
                  words: 95,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

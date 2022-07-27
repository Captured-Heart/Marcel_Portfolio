// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_portfolio/Mobile/Widgets/edu_div_mobile.dart';

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
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04, vertical: size.width * 0.02),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            EducationDivOptonsMobile(
              size: size,
              date: 'Feb 2022 - Present',
              company: 'Nestuge Technologies',
              position: 'Flutter Intern',
              role:
                  '- I worked remotely Using Visual Studio, Flutter/Dart and other softwares tools to maintain codes that were used to develop the Nestuge Products(Hubs & Campuskonekt) Mobile App.',
            ),
            SizedBox(
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.orange[400],
              ),
              width: size.width * 0.85,
              height: 50,
            ),
            EducationDivOptonsMobile(
                size: size,
                date: 'Nov 2022 - Jan 2022',
                company: 'Miyotl',
                position: 'Flutter Consultant',
                role:
                    '''- A company that uses their mobile app to reduce the extinction of the community that speaks a Mexican language

- I was recruited to help maintain the code base, fix bugs and add new features where need be.'''),
            SizedBox(
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.orange[400],
              ),
              width: size.width * 0.85,
              height: 50,
            ),
            EducationDivOptonsMobile(
                size: size,
                date: 'Oct 2019 - Apr 2021',
                company: 'Roar Hub Nigeria',
                position: 'C.E.O, C.T.O,  JOAN-Handiy(Start-up)',
                role:
                    '- I Used Html/CSS/Js to build websites, dashboards for the patients and hospital softwares.'),
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

import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Screens/LeftDiv/left_div_language.dart';

class LeftDivSkills extends StatelessWidget {
  const LeftDivSkills({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: size.height * 0.22,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          // SizedBox(height: 10),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            spacing: 10,
            runSpacing: 7,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              LeftDivLanguagesComponents(
                leading: 'Html',
                size: size,
              ),
              LeftDivLanguagesComponents(
                leading: 'CSS',
                size: size,
              ),
              LeftDivLanguagesComponents(
                leading: 'JS',
                size: size,
              ),
              LeftDivLanguagesComponents(
                leading: 'Flutter',
                size: size,
              ),
              LeftDivLanguagesComponents(
                leading: 'Firebase',
                size: size,
              ),
              LeftDivLanguagesComponents(
                leading: 'WordPress',
                size: size,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

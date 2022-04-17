import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/left_div_language.dart';

class LeftDivSkills extends StatelessWidget {
  const LeftDivSkills({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.22,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: const[
          Text(
            'Skills',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          LeftDivLanguagesComponents(
            leading: 'Html',
            trailing: '80%',
            value: 0.8,
          ),
          LeftDivLanguagesComponents(
            leading: 'CSS',
            trailing: '70%',
            value: 0.7,
          ),
          LeftDivLanguagesComponents(
            leading: 'JS',
            trailing: '40%',
            value: 0.4,
          ),
          LeftDivLanguagesComponents(
            leading: 'Flutter',
            trailing: '85%',
            value: 0.85,
          ),
          LeftDivLanguagesComponents(
            leading: 'NodeJS',
            trailing: '15%',
            value: 0.15,
          ),
          LeftDivLanguagesComponents(
            leading: 'WordPress',
            trailing: '50%',
            value: 0.55,
          ),
        ],
      ),
    );
  }
}


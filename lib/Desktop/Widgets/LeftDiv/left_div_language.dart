// ignore_for_file: prefer_const_constructors

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
        children: const [
          Text(
            'Languages',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          LeftDivLanguagesComponents(
            leading: 'English',
            trailing: '85%',
            value: 0.85,
          ),
          LeftDivLanguagesComponents(
            leading: 'Igbo',
            trailing: '80%',
            value: 0.8,
          ),
          LeftDivLanguagesComponents(
            leading: 'French',
            trailing: '10%',
            value: 0.1,
          ),
          LeftDivLanguagesComponents(
            leading: 'Hausa',
            trailing: '15%',
            value: 0.15,
          ),
        ],
      ),
    );
  }
}


class LeftDivLanguagesComponents extends StatelessWidget {
  const LeftDivLanguagesComponents({
    Key? key,
    required this.leading,
    required this.trailing,
    required this.value,
  }) : super(key: key);
  final String leading, trailing;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(leading),
            Text(trailing),
          ],
        ),
        LinearProgressIndicator(
          backgroundColor: Color(0xffE5E5E5),
          value: value,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.orange[400]!),
        )
      ],
    );
  }
}


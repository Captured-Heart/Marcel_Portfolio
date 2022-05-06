// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftDivExtraSkills extends StatelessWidget {
  const LeftDivExtraSkills({
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Extra Skills',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.microsoft,
                color: Colors.orange[400],
              ),
              SizedBox(width: 10),
              Expanded(
                child: AutoSizeText(
                  'Data Handling and Presentation Skills(Microsoft Office Skills)',
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.video,
                color: Colors.orange[400],
              ),
              SizedBox(width: 10),
              Expanded(
                child: AutoSizeText(
                  'Communication Tools (Zoom, Google Meet etc)',
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.workspaces_sharp,
                color: Colors.orange[400],
              ),
              SizedBox(width: 10),
              Expanded(
                child: AutoSizeText(
                  'Project Management Skills(Asana, Trello etc)',
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

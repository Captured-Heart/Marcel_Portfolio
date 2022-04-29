// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LeftDivExtraSkills extends StatelessWidget {
  const LeftDivExtraSkills({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);
  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.22,
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
          Row(
            children: [
              Icon(
                Icons.cabin,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
        
          Row(
            children: [
              Icon(
                Icons.hide_image_outlined,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.workspaces_sharp,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
        ],
      ),
    );
  }
}


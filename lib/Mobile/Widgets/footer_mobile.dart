// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(
            10,
          ),
        ),
      ),
      child: Column(
        children: const [
          Text(
            '2022, All Rights Reserved.',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'UMUNTU NGUMUNTU NGABANTU',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(
          color: Colors.grey,
          width: 1.4,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.ac_unit_sharp),
          SizedBox(
            width: size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('About Me'),
                Text('Skills'),
                Text('Portfolio'),
                TextButton(
                  onPressed: () {},
                  child: Text('Contact Me'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
    required this.icons,
  }) : super(key: key);
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.1,
      // width: size.width * 0.1,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.orange[400],
        shape: BoxShape.circle,
      ),
      child: Icon(
        icons,
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
    required this.icons, required this.onTap,
  }) : super(key: key);
  final IconData icons;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // height: size.height * 0.1,
        // width: size.width * 0.1,
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.orange[400],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icons,
          size: 20,
        ),
      ),
    );
  }
}

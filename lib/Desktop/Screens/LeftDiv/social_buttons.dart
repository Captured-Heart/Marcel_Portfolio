import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
    required this.icons,
    this.iconSize,
    this.iconColor,
    this.containerColor,
    required this.onTap,
  }) : super(key: key);
  final IconData icons;
  final VoidCallback onTap;
  final Color ? containerColor, iconColor;
  final double ? iconSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // height: size.height * 0.1,
        // width: size.width * 0.1,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: containerColor ?? Colors.orange[400],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icons,
          size: iconSize ?? 20,
          color: iconColor ?? Colors.black,
        ),
      ),
    );
  }
}

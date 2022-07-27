import 'package:flutter/material.dart';

class LeftDivDetailsComponents extends StatelessWidget {
  const LeftDivDetailsComponents({
    Key? key,
    required this.leading,
    required this.trailing,
    this.textColor,
  }) : super(key: key);
  final String leading, trailing;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          color: Colors.orange[400],
          child: Text(leading),
        ),
        Text(
          trailing,
          style: TextStyle(color: textColor),
        )
      ],
    );
  }
}

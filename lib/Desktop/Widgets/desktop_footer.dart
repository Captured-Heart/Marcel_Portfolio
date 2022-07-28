import 'package:flutter/material.dart';

class DesktopFooterWidget extends StatelessWidget {
  const DesktopFooterWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      width: size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      margin: EdgeInsets.only(
        top: size.height * 0.1,
      ),
      alignment: Alignment.center,
      child: const Text(
          '2022, All Rights Reserved. "UMUNTU NGUMUNTU NGABANTU"'),
    );
  }
}

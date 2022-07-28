import 'package:auto_size_text/auto_size_text.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(
            10,
          ),
        ),
      ),
      child: Column(
        children: [
          const AutoSizeText(
            '2022, All Rights Reserved.',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),
          ),
          const AutoSizeText(
            'UMUNTU NGUMUNTU NGABANTU',
            maxLines: 1,
            style: TextStyle(
                fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/flutter_logo.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Built with flutter!',
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

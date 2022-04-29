// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContactUsInfoLeft extends StatelessWidget {
  const ContactUsInfoLeft({
    Key? key,
    required this.size,
    required this.scale,
  }) : super(key: key);

  final Size size;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: AnimatedScale(
        duration: Duration(milliseconds: 1200),
        scale: scale,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldOptions(title: 'Your Full Name (Required)'),
                  Row(
                    children: [
                      Expanded(
                          child: TextFieldOptions(
                              title: 'Your Email  (Required)')),
                      SizedBox(
                        width: size.width * 0.2,
                        child: TextFieldOptions(title: 'Phone Number'),
                      ),
                    ],
                  ),
                  TextFieldOptions(title: 'Your Message', maxlines: 3),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: size.height * 0.05,
                      alignment: Alignment.center,
                      width: size.width * 0.12,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.orange[400],
                      ),
                      child: Text(
                        'SEND MESSAGE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldOptions extends StatelessWidget {
  const TextFieldOptions({
    Key? key,
    required this.title,
    this.maxlines,
  }) : super(key: key);
  final String title;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          SizedBox(height: 5),
          TextFormField(
            maxLines: maxlines,
            // minLines: 1,
            // expands: true,

            decoration: InputDecoration(
              fillColor: Color(0xffE5E5E5),
              filled: true,
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

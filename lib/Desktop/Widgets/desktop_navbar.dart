// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesktopNavBar extends StatefulWidget {
  const DesktopNavBar({
    Key? key,
    required this.size,
    required this.onTapAbout,
    required this.onTapHome,
    required this.onTapPortfolio,
    required this.onTopContact,
  }) : super(key: key);

  final Size size;
  final VoidCallback onTapAbout, onTapHome, onTapPortfolio, onTopContact;
  @override
  State<DesktopNavBar> createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  final List _hover = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.08,
      padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.06),
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
          Text(
            'C-H 💜',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: widget.size.width * 0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: widget.onTapHome,
                  onHover: ((value) {
                    setState(() {
                      value ? _hover[0] = true : _hover[0] = false;
                    });
                  }),
                  child: Text(
                    'Home',
                    style: textStyle(_hover, 0),
                  ),
                ),

                //!PORTFOLIO
                InkWell(
                  onTap: widget.onTapPortfolio,
                  onHover: ((value) {
                    setState(() {
                      value ? _hover[1] = true : _hover[1] = false;
                    });
                  }),
                  child: Text(
                    'Portfolio',
                    style: textStyle(_hover, 1),
                  ),
                ),

                //!ABOUT ME
                InkWell(
                    onTap: widget.onTapAbout,
                    onHover: ((value) {
                      setState(() {
                        value ? _hover[2] = true : _hover[2] = false;
                      });
                    }),
                    child: Text(
                      'About Me',
                      style: textStyle(_hover, 2),
                    )),

                //!CONTACT ME
                TextButton(
                    onPressed: widget.onTopContact,
                    onHover: ((value) {
                      setState(() {
                        value ? _hover[3] = true : _hover[3] = false;
                      });
                    }),
                    child: Text(
                      'Contact Me',
                      style: textStyle(_hover, 3),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle textStyle(dynamic _hover, int index) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: !_hover[index] ? 18 : 20,
    color: !_hover[index] ? Colors.black : Colors.orange[400],
  );
}

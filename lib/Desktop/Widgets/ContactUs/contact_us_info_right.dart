// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/social_buttons.dart';

class ContactUsInfoRight extends StatelessWidget {
  const ContactUsInfoRight({
    Key? key,
    required this.size,
    required this.opacity,
    required this.left,
    required this.turns,
    required this.offset,
  }) : super(key: key);

  final Size size;
  final double opacity, left, turns;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: AnimatedSlide(
        duration: Duration(milliseconds: 1000),
        curve: Curves.linear,
        // padding: EdgeInsets.only(left: left),
        offset: offset,
        child: Container(
          color: Color(0xffE5E5E5),
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Contact Information',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                // color: Colors.white,
                height: size.height * 0.65,
                // margin: EdgeInsets.only(right: 30),
                // padding: EdgeInsets.symmetric(
                //   // horizontal: 20,
                //   vertical: 15,
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.20,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SocialButtons(
                            icons: Icons.mail,
                            // opacity: opacity,
                          ),
                          ContactInfoDetails(
                            leading: 'Country: ',
                            trailing: 'Nigeria',
                          ),
                          ContactInfoDetails(
                            leading: 'City: ',
                            trailing: 'Enugu',
                          ),
                          ContactInfoDetails(
                            leading: 'Street: ',
                            trailing: 'University of Nigeria, Nsukka',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.2,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SocialButtons(
                            icons: Icons.mail,
                            // opacity: opacity,
                          ),
                          ContactInfoDetails(
                            leading: 'Country: ',
                            trailing: 'Nigeria',
                          ),
                          ContactInfoDetails(
                            leading: 'City: ',
                            trailing: 'Enugu',
                          ),
                          ContactInfoDetails(
                            leading: 'Street: ',
                            trailing: 'University of Nigeria, Nsukka',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.2,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SocialButtons(
                            icons: Icons.mail,
                            // opacity: opacity,
                          ),
                          ContactInfoDetails(
                            leading: 'Country: ',
                            trailing: 'Nigeria',
                          ),
                          ContactInfoDetails(
                            leading: 'City: ',
                            trailing: 'Enugu',
                          ),
                          ContactInfoDetails(
                            leading: 'Street: ',
                            trailing: 'University of Nigeria, Nsukka',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfoDetails extends StatelessWidget {
  const ContactInfoDetails({
    Key? key,
    required this.leading,
    required this.trailing,
  }) : super(key: key);
  final String leading, trailing;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(leading), Text(trailing)],
    );
  }
}

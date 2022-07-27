import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Utils/responsive.dart';

class ContactUsInfoRight extends StatelessWidget {
  const ContactUsInfoRight({
    Key? key,
    required this.size,
    // required this.offset,
    required this.padding,
    required this.alignment,
    required this.crossAxisAlignment,
  }) : super(key: key);

  final Size size;
  // final Offset offset;
  final EdgeInsets padding;
  final AlignmentGeometry alignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: SizedBox(
        height: size.height * 0.65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            AnimatedPadding(
              padding: padding,
              duration: Duration(milliseconds: 1200),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.019,
                    backgroundColor: Colors.orange[500],
                    child: Icon(
                      Icons.location_on_sharp,
                      size: size.width * 0.025,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: AutoSizeText(
                      'Roar Hub, University of Nigeria, Nsukka',
                      style: textStyle(context),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.045),
            AnimatedPadding(
              padding: padding,
              duration: Duration(milliseconds: 1600),
              child: ContactInfoListTile(
                size: size,
                text: 'knkpozi@gmail.com',
                text2: 'kcmarcel96@gmail.com',
                icon: Icons.email_outlined,
              ),
            ),
            SizedBox(height: size.height * 0.045),
            AnimatedPadding(
              padding: padding,
              duration: Duration(milliseconds: 2000),
              child: ContactInfoListTile(
                size: size,
                icon: Icons.phone,
                text2: '+2347051678158',
                text: '+2348052340065',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle textStyle(context) {
  return TextStyle(
    fontSize: Responsive.isMobile(context) ? 16 : 18,
    fontWeight: FontWeight.bold,
  );
}

class ContactInfoListTile extends StatelessWidget {
  const ContactInfoListTile(
      {Key? key,
      required this.size,
      required this.icon,
      required this.text,
      required this.text2})
      : super(key: key);
  final Size size;
  final IconData icon;
  final String text, text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: size.width * 0.019,
          backgroundColor: Colors.orange[500],
          child: Icon(
            icon,
            size: size.width * 0.025,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: textStyle(context),
              ),
              SizedBox(height: 6),
              Text(
                text2,
                style: textStyle(context),
              ),
            ],
          ),
        )
      ],
    );
  }
}

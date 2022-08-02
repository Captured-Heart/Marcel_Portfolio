import 'package:flutter/material.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_left.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_right.dart';
import 'package:my_portfolio/Desktop/Widgets/desktop_footer.dart';
import 'package:my_portfolio/Mobile/Widgets/footer_mobile.dart';

import '../Widgets/center_title.dart';

class DesktopContactUs extends StatelessWidget {
  DesktopContactUs({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
          EdgeInsets.only(left: 20.0, right: 20, top: size.height * 0.08)..bottom,
      controller: scrollController,
      children: [
        CenterTitleWidget(
          size: size,
          title: 'CONTACT ME',
          subtitle:
              'If you have some thing you would like me to build for you or an enquiry please message. I am available to work on your projects and bring your ideas to life. I am just a click away.',
          centerTitle: 'I Love To Hear From You.',
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactUsInfoLeft(
              size: size,
            ),
            ContactUsInfoRight(
                size: size,
                crossAxisAlignment:
                    //  pixels >= 2300
                    // ?
                    CrossAxisAlignment.end,
                // : CrossAxisAlignment.start,
                padding:
                    // pixels >= 2070
                    // ?
                    EdgeInsets.only(top: 0, left: size.width * 0.015),
                // :
                // EdgeInsets.only(top: size.height * 0.1),
                alignment: Alignment.topCenter
                // : Alignment.bottomCenter,
                ),
          ],
        ),
        DesktopFooterWidget(size: size)
      ],
    );
  }
}

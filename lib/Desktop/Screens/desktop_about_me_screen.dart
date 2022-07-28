
import 'package:flutter/material.dart';

import '../Widgets/About_Me/education_div.dart';
import '../Widgets/center_title.dart';

class DesktopAboutMe extends StatelessWidget {
   DesktopAboutMe({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      controller: scrollController,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: size.height * 0.08),
      children: [
        CenterTitleWidget(
          size: size * 1.2,
          title: 'ABOUT',
          subtitle: 'Detailed insight to my qualifications and credentials',
          centerTitle: 'Let me introduce myself.',
        ),
        EducationDiv(
          size: size,
          // 1155
        ),
      ],
    );
  }
}
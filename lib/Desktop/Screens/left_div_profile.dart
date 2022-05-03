// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/left_div_extras.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/social_buttons.dart';
import 'package:my_portfolio/dialogs.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/LeftDiv/left_div_details.dart';
import '../Widgets/LeftDiv/left_div_language.dart';
import '../Widgets/LeftDiv/left_div_skill.dart';

class LeftDivProfile extends StatelessWidget {
  LeftDivProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final Dialogs dialogs = Dialogs();

  @override
  Widget build(BuildContext context) {
    Future<void> launchSocialMediaUrls({required Uri url}) async {
      await canLaunchUrl(url)
          ? launchUrl(url)
          : dialogs.successDialog(
              contentText:
                  "There is no Social Media Page Yet or account currently unavailable",
              titleText: 'Error',
              context: context,
            );
    }

    return Neumorphic(
      margin: EdgeInsets.only(bottom: 10),
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.only(
              bottomRight: Radius.circular(10),
            ),
          ),
          depth: 10,
          intensity: 0.3,
          surfaceIntensity: 0.1,
          lightSource: LightSource.topLeft,
          color: Colors.grey),
      child: Container(
        height: size.height,
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 20 : 40,
          vertical: Responsive.isMobile(context) ? 15 : 30,
        ),
        color: Colors.white,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CircleAvatar(
            backgroundColor: Color(0xffE5E5E5),
            radius: Responsive.isMobile(context)
                ? size.width * 0.15
                : size.width * 0.05,
            backgroundImage: AssetImage(
              'assets/images/myDp.png',
            ),
          ),
          Text('Nkpozi Marcel Kelechi'),
          Text('Full Stack Developer'),
          SizedBox(
            width: size.width * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialButtons(
                  icons: FontAwesomeIcons.facebookF,
                  onTap: () {
                    launchSocialMediaUrls(
                        url: Uri.parse(
                            'https://web.facebook.com/NkpoziMarcelKelechi/'));
                  },
                ),
                SocialButtons(
                  icons: FontAwesomeIcons.twitter,
                  onTap: () {
                    launchSocialMediaUrls(
                        url: Uri.parse('https://twitter.com/CapturedWarrior'));
                  },
                ),
                SocialButtons(
                  icons: FontAwesomeIcons.github,
                  onTap: () {
                    launchSocialMediaUrls(
                        url: Uri.parse('https://github.com/Captured-Heart'));
                  },
                ),
              ],
            ),
          ),
          // Divider(),
          // LeftDivDetails(size: size),
          // Divider(),
          // LeftDivLanguages(size: size),
          Divider(),
          LeftDivSkills(size: size),
          Divider(),
          LeftDivExtraSkills(
            size: size,
            text: 'BootStrap, Material Fonts',
          ),
          Divider(),
          Container(
            height: size.height * 0.05,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.orange[400],
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'DOWNLOAD CV',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(width: 7),
                  Icon(Icons.file_download_outlined)
                ]),
          ),
        ]),
      ),
    );
  }
}

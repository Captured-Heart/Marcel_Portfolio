// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/left_div_extras.dart';
import 'package:my_portfolio/Desktop/Widgets/LeftDiv/social_buttons.dart';
import 'package:my_portfolio/Utils/responsive.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

import '../Widgets/LeftDiv/left_div_skill.dart';

class LeftDivProfile extends StatelessWidget {
  LeftDivProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Neumorphic(
        margin: EdgeInsets.only(bottom: Responsive.isMobile(context) ? 2 : 5),
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
            vertical: Responsive.isMobile(context) ? 15 : 20,
          ),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffE5E5E5),
                radius: Responsive.isMobile(context)
                    ? size.width * 0.15
                    : size.width * 0.045,
                backgroundImage: AssetImage(
                  'assets/images/myDp1.png',
                ),
              ),
              SizedBox(height: 5),
              AutoSizeText(
                'Nkpozi  Marcel  Kelechi',
                maxLines: 1,
                style: GoogleFonts.oleoScript(
                    fontWeight: FontWeight.w600, fontSize: 22),
              ),
              SizedBox(height: 5),
              Text(
                'Full Stack Flutter Developer',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: size.width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialButtons(
                      icons: FontAwesomeIcons.facebookF,
                      onTap: () {
                        urlLauncher.launchSocialMediaUrls(context,
                            url: Uri.parse(
                                'https://web.facebook.com/NkpoziMarcelKelechi/'));
                      },
                    ),
                    SocialButtons(
                      icons: FontAwesomeIcons.twitter,
                      onTap: () {
                        urlLauncher.launchSocialMediaUrls(context,
                            url:
                                Uri.parse('https://twitter.com/CapturedWarrior'));
                      },
                    ),
                    SocialButtons(
                      icons: FontAwesomeIcons.github,
                      onTap: () {
                        urlLauncher.launchSocialMediaUrls(context,
                            url: Uri.parse('https://github.com/Captured-Heart'));
                      },
                    ),
                  ],
                ),
              ),
              Divider(),
              Responsive.isMobile(context)
                  ? LeftDivSkills(size: size)
                  : Expanded(child: LeftDivSkills(size: size)),
              Divider(),
              Expanded(
                child: LeftDivExtraSkills(
                  size: size,
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  urlLauncher.launchSocialMediaUrls(
                    context,
                    url: Uri.parse(
                      'https://firebasestorage.googleapis.com/v0/b/nkpozi-marcel-42a08.appspot.com/o/Kelechi_Marcel_Nkpozi_Resume.pdf?alt=media&token=c39f7a7a-fdcc-4ac8-b91b-efd0a46bb0ac',
                    ),
                  );
                },
                child: Container(
                  // height: Responsive.isMobile(context)
                  //     ? size.height * 0.065
                  //     : size.height * 0.05,
                  // width: size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.008),
                  padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical:  9),
                  decoration: BoxDecoration(
                    color: Colors.orange[400],
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            'DOWNLOAD CV',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Responsive.isMobile(context) ? 14 : 20,
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // SizedBox(width: 7),
                        Icon(Icons.file_download_outlined)
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

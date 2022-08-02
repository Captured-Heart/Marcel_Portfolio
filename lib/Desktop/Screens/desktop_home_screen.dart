import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Utils/responsive.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

import 'LeftDiv/social_buttons.dart';

class DesktopHomeScreen extends StatelessWidget {
  DesktopHomeScreen({
    Key? key,
    required this.size,
    required this.loremp,
  }) : super(key: key);

  final Size size;
  final String loremp;
  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        depth: 10,
        intensity: 0.4,
        surfaceIntensity: 0.1,
        lightSource: LightSource.topLeft,
        color: Colors.grey,
      ),
      child: Container(
        color: Colors.white,
        height: Responsive.isDesktop(context)
            ? size.height * 0.7
            : size.height * 0.5,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // height: size.height * 0.35,
                padding: EdgeInsets.only(left: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: size.width / 2,
                          child: AutoSizeText(
                            'Nkpozi  Marcel  Kelechi ',
                            style: GoogleFonts.oleoScript(
                              fontSize: Responsive.isDesktop(context)
                                  ? size.width * 0.03
                                  : 26,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const AutoSizeText(
                          'Full Stack Flutter Developer ',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.05),
                    AutoSizeText(
                      loremp,
                      maxLines: Responsive.isDesktop(context) ? 7 : 11,
                      style: TextStyle(
                        fontSize: Responsive.isDesktop(context) ? 35 : 17,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
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
                        margin: EdgeInsets.only(right: size.width * 0.08),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                'DOWNLOAD CV',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize:
                                      Responsive.isDesktop(context) ? 24 : 16,
                                ),
                                maxLines: 1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Icon(
                              Icons.file_download_outlined,
                              size: 25,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(color: Colors.orange[400]),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: size.height * 0.03),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SocialButtons(
                            icons: FontAwesomeIcons.facebookF,
                            containerColor: Colors.transparent,
                            iconSize: 40,
                            iconColor: Colors.blue[700],
                            onTap: () {
                              urlLauncher.launchSocialMediaUrls(context,
                                  url: Uri.parse(
                                      'https://web.facebook.com/NkpoziMarcelKelechi/'));
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SocialButtons(
                            icons: FontAwesomeIcons.twitter,
                            containerColor: Colors.transparent,
                            iconSize: 40,
                            iconColor: Colors.blue[300],
                            onTap: () {
                              urlLauncher.launchSocialMediaUrls(context,
                                  url: Uri.parse(
                                      'https://twitter.com/CapturedWarrior'));
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SocialButtons(
                            icons: FontAwesomeIcons.github,
                            containerColor: Colors.transparent,
                            iconSize: 40,
                            onTap: () {
                              urlLauncher.launchSocialMediaUrls(
                                context,
                                url: Uri.parse(
                                    'https://github.com/Captured-Heart'),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SocialButtons(
                            icons: FontAwesomeIcons.linkedin,
                            containerColor: Colors.transparent,
                            iconSize: 40,
                            iconColor: const Color(0xff0A66C2),
                            onTap: () {
                              urlLauncher.launchSocialMediaUrls(
                                context,
                                url: Uri.parse(
                                    'https://www.linkedin.com/in/nkpozi-marcel-kelechi-213295172/'),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //!~ MY PICTURE COLUMN
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                //  fit: Responsive.isDesktop(context)
                //         ? FlexFit.tight
                //         : FlexFit.loose,
                children: [
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Row(
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
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                          textScaleFactor: 1.2,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      'assets/images/myDp1.png',
                      fit: BoxFit.fill,
                      width: size.width * 0.5,
                      height: size.height * 0.8,
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

// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

class IstCenterDivDesktop extends StatelessWidget {
  IstCenterDivDesktop({
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
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.only(
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
        height: size.height * 0.7,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                // height: size.height * 0.35,
                padding: EdgeInsets.only(left: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Nkpozi  Marcel Kelechi ',
                          style: GoogleFonts.oleoScript(
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(height: 10),
                        AutoSizeText(
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
                      maxLines: 7,
                      style: TextStyle(
                        fontSize: 35,
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
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
                                  fontSize: 24,
                                ),
                                maxLines: 1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Icon(
                              Icons.file_download_outlined,
                              size: 25,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(color: Colors.orange[400]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Image.asset(
                    'assets/images/myDp1.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

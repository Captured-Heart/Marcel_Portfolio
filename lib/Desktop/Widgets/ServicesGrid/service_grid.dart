import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Utils/responsive.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

class MyServicesGrid extends StatelessWidget {
  MyServicesGrid({
    Key? key,
    this.width,
    required this.imgUrl,
    required this.title,
    required this.content,
    required this.gitHubUrl,
  }) : super(key: key);
  final double? width;
  final String imgUrl;
  final String title, content;
  final Uri gitHubUrl;
  static const colorizeColors = [
    Color.fromARGB(255, 2, 42, 74),
    Colors.orange,
    Colors.yellow,
    Colors.red,
  ];
  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Neumorphic(
      // drawSurfaceAboveChild: false,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      style: const NeumorphicStyle(
        shape: NeumorphicShape.concave,
        // boxShape: NeumorphicBoxShape.roundRect(Bord,erRadius.circular(12)),
        depth: 2,
        intensity: 3.9,
        surfaceIntensity: 0.15,
        color: Colors.white,

        lightSource: LightSource.topRight,
        // border: NeumorphicBorder(
        //   isEnabled: Responsive.isMobile(context) ? false : true,
        //   color: Colors.black,
        //   width: 0.1,
        // )
        // color: Colors.grey,
      ),
      child: SizedBox(
        height: size.height * 0.9,
        width: size.width * 0.22,
        // color: Colors.white,
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
            // SizedBox(height: 5),

            Expanded(
              // flex: 5,
              child: Image.asset(
                imgUrl,
                fit: BoxFit.cover,
                // width: size.width,
                // height: size.height,
              ),
            ),
            SizedBox(
              width: size.width,
              child: const Divider(thickness: 2),
            ),
            // SizedBox(
            //   width: size.width,
            //   child: Divider(thickness: 2),
            // ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(content),
                ),
                SizedBox(
                  width: size.width,
                  child: const Divider(thickness: 2),
                ),
                InkWell(
                  onTap: () {
                    urlLauncher.launchSocialMediaUrls(
                      context,
                      url: gitHubUrl,
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // margin: Responsive.isMobile(context)
                    //     ? EdgeInsets.symmetric(horizontal: size.width * 0.15)
                    //     : EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    // width: Responsive.isDesktop(context)
                    //     ? size.width * 0.2
                    //     : size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange[400],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                         AutoSizeText(
                          'View Code',
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                          // colors: colorizeColors,
                          // speed: Duration(milliseconds: 45),
                        ),
                         SizedBox(width: 10),
                         Icon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                        )
                      ],
                    ),
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

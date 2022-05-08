// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_portfolio/Utils/portfolio_util.dart';

class MyServicesGrid extends StatelessWidget {
   MyServicesGrid({
    Key? key,
    this.width,
    required this.imgUrl, this.title, this.content, this.gitHubUrl, this.webUrl,
  }) : super(key: key);
  final double? width;
  final String imgUrl;
  final String ? title, content, gitHubUrl, webUrl;
  static const colorizeColors = [
    Color.fromARGB(255, 2, 42, 74),
    Colors.orange,
    Colors.yellow,
    Colors.red,
  ];
    final PortfolioUtil portfolioUtil = PortfolioUtil();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 2,
        intensity: 0.4,
        surfaceIntensity: 0.1,
        lightSource: LightSource.bottom,
        // color: Colors.grey,
      ),
      child: Container(
        // height: size.height * 0.83
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        width: width,
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'NemyAdmin App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              
              ),
              textAlign: TextAlign.start
            ),
            Expanded(
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fitWidth,
                width: size.width,
                height: size.height,
              ),
            ),
            SizedBox(
              width: size.width,
              child: Divider(thickness: 2),
            ),
            Text(portfolioUtil.portfolioMesssage[0]),
            SizedBox(
              width: size.width,
              child: Divider(thickness: 2),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText('Live Preview',
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.orange[400],
                          ),
                          colors: colorizeColors,
                          speed: Duration(milliseconds: 45)),
                    ],
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ColorizeAnimatedText('Source Code',
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.orange[400],
                          ),
                          colors: colorizeColors,
                          speed: Duration(milliseconds: 45)),
                    ],
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

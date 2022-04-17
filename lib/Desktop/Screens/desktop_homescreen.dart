// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_portfolio/Desktop/Screens/education_div.dart';
import 'package:my_portfolio/Desktop/Screens/left_div_profile.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_right.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_left.dart';
import 'package:my_portfolio/Desktop/Widgets/center_title.dart';
import 'package:my_portfolio/Desktop/Widgets/desktop_navbar.dart';
import 'package:my_portfolio/Desktop/Screens/ist_center_div.dart';
import 'package:my_portfolio/Desktop/Widgets/service_grid.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  late ScrollController _scrollController;
  double pixels = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
        // print(pixels);
      });
    });
  }

  final String loremp = lorem(paragraphs: 1, words: 35);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: PreferredSize(
        preferredSize: size,
        child: DesktopNavBar(size: size),
      ),
      body: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: -10,
          intensity: 0.8,
          surfaceIntensity: 0.6,
          lightSource: LightSource.topLeft,
          // color: Colors.grey,
        ),
        child: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //!LEFT DIV CONTAINING MY PROFILE
              LeftDivProfile(size: size),

              //! THE MIDDLE DIV DOWN TO THE END OF THE WEBSITE
              Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Container(
                    // height: size.height,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IstCenterDivDesktop(size: size, loremp: loremp),
                        CenterTitleWidget(size: size),
                        SizedBox(
                          height: size.height * 0.47,
                          child: AnimatedOpacity(
                            opacity: pixels >= 100 ? 1.0 : 0.3,
                            duration: Duration(milliseconds: 500),
                            child: AnimatedPadding(
                              duration: Duration(milliseconds: 500),
                              padding: EdgeInsets.only(
                                  left: pixels >= 100 ? 0.0 : 500),
                              child: GridView.count(
                                physics: NeverScrollableScrollPhysics(),
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 1.9,
                                children: const [
                                  MyServicesGrid(),
                                  MyServicesGrid(),
                                  MyServicesGrid(),
                                  MyServicesGrid(),
                                  MyServicesGrid(),
                                  MyServicesGrid(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        CenterTitleWidget(size: size),
                        EducationDiv(size: size),
                        CenterTitleWidget(size: size),
                        EducationDiv(size: size),
                        SizedBox(
                          height: size.height * 0.73,
                          width: size.width,
                          child: Row(children: [
                            ContactUsInfoLeft(size: size),
                            ContactUsInfoRight(size: size)
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          height: size.height * 0.08,
                          width: size.width,
                          margin: EdgeInsets.only(
                            top: size.height * 0.1,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                              '2022, All Rights Reserved. "UMUNTU NGUMUNTU NGABANTU"'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //! THE RIGHT DIV CONYTAINER NAVIGATION AND ICONS WEY I NO SABI, LOL
              Expanded(
                flex: 1,
                child: Container(
                  height: size.height,
                  color: Colors.purple[200],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

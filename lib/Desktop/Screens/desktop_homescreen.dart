// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';
import 'package:my_portfolio/Desktop/Widgets/EduDiv/education_div.dart';
import 'package:my_portfolio/Desktop/Screens/left_div_profile.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_right.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_left.dart';
import 'package:my_portfolio/Desktop/Widgets/center_title.dart';
import 'package:my_portfolio/Desktop/Widgets/desktop_navbar.dart';
import 'package:my_portfolio/Desktop/Widgets/IstDiv/ist_center_div.dart';
import 'package:my_portfolio/Desktop/Widgets/ServicesGrid/service_grid.dart';
import 'package:my_portfolio/Utils/responsive.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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

  int activeStep = 0;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
        if (pixels >= offsetPortfolio) {
          activeStep = 1;
          if (pixels >= offsetAbout) {
            activeStep = 2;
          }
          if (pixels >= offsetContact) {
            activeStep = 3;
          }
        } else {
          activeStep = 0;
        }

        // ignore: avoid_print
        print(_scrollController.position.pixels);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void scrollTo(double index) {
    _scrollController.animateTo(scrollPexels[index.toInt()],
        duration: Duration(seconds: 2), curve: Curves.linear);
  }

  List scrollPexels = [
    offsetHome,
    offsetPortfolio,
    offsetAbout,
    offsetContact,
  ];
  static double offsetHome = 0;
  static double offsetPortfolio = 630;
  static double offsetAbout = 1800;
  static double offsetContact = 3000;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: PreferredSize(
        preferredSize: size,
        child: DesktopNavBar(
          size: size,
          onTapHome: () {
            scrollTo(0);
          },
          onTapPortfolio: () {
            scrollTo(1);
          },
          onTapAbout: () {
            scrollTo(2);
          },
          onTopContact: () {
            scrollTo(3);
          },
        ),
      ),
      body: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //!LEFT DIV CONTAINING MY PROFILE
            Responsive.isDesktop(context)
                ? Expanded(
                    flex: 3,
                    child: LeftDivProfile(
                      size: size,
                    ),
                  )
                : SizedBox(),

            //! THE MIDDLE DIV DOWN TO THE END OF THE WEBSITE
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                physics:
                    ClampingScrollPhysics(parent: FixedExtentScrollPhysics()),
                controller: _scrollController,
                child: Container(
                  // height: size.height,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IstCenterDivDesktop(
                        size: size,
                        loremp:
                            'A flutter developer with front end development skills. I developed the passion and enduring enthusiasm for technology especially programming during my course of formal education. I am passionate about leveraging my diverse backgrounds to decipher challenging problems and create delightful experiences. ',
                      ),
                      SizedBox(height: size.height * 0.1),
                      CenterTitleWidget(
                        size: size,
                        title: 'Portfolio',
                        centerTitle: 'Check Out Some of My Works.',
                        subtitle:
                            'These are some of the works I have done so far both side projects and works for Clients(of course with their permission).',
                      ),
                      SizedBox(
                        height: size.height,
                        child: AnimatedOpacity(
                          opacity: pixels >= 100 ? 1.0 : 0.3,
                          duration: Duration(milliseconds: 500),
                          child: AnimatedPadding(
                            duration: Duration(milliseconds: 1000),
                            padding: EdgeInsets.only(
                                left: pixels >= 100 && pixels <= 1880
                                    ? 0.0
                                    : 500),
                            child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 1.5,
                              children: const [
                                MyServicesGrid(),
                                MyServicesGrid(),
                                MyServicesGrid(),
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
                      SizedBox(height: size.height * 0.06),
                      CenterTitleWidget(
                        size: size * 1.2,
                        title: 'ABOUT',
                        subtitle:
                            'Detailed insight to my qualifications and credentials',
                        centerTitle: 'Let me introduce myself.',
                      ),
                      EducationDiv(
                        size: size,
                        // 1155
                        scale: pixels >= 1155 ? 1 : 0.5,
                      ),
                      SizedBox(height: size.height * 0.08),
                      SizedBox(height: size.height * 0.08),
                      CenterTitleWidget(
                        size: size,
                        title: 'CONTACT ME',
                        subtitle:
                            'If you have some thing you would like me to build for you or an enquiry please message. I am available to work on your projects and bring your ideas to life. I am just a click away.',
                        centerTitle: 'I would Love To Hear From You.',
                      ),
                      SizedBox(
                        height: size.height * 0.63,
                        width: size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContactUsInfoLeft(
                              size: size,
                              scale: pixels >= 2070 ? 1.0 : 0.3,
                            ),
                            ContactUsInfoRight(
                              size: size,
                              crossAxisAlignment: pixels >= 2300
                                  ? CrossAxisAlignment.end
                                  : CrossAxisAlignment.start,
                              padding: pixels >= 2070
                                  ? EdgeInsets.only(
                                      top: 0, left: size.width * 0.015)
                                  : EdgeInsets.only(top: size.height * 0.1),
                              alignment: pixels >= 2070
                                  ? Alignment.topCenter
                                  : Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.08,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            )),
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
                  alignment: Alignment.center,
                  color: Colors.white,
                  height: size.height,
                  child: IconStepper(
                    direction: Axis.vertical,
                    enableNextPreviousButtons: false,
                    activeStep: activeStep,
                    stepPadding: 10,
                    activeStepBorderWidth: 5,
                    activeStepBorderColor: Colors.grey[400],
                    onStepReached: (index1) {
                      setState(() {
                        scrollTo(index1.toDouble());
                        // activeStep = index1;
                      });
                    },
                    stepReachedAnimationEffect: Curves.linear,
                    stepReachedAnimationDuration: Duration(seconds: 10),
                    activeStepColor: Colors.orange[500],
                    lineLength: size.height * 0.125,
                    // ignore: prefer_const_literals_to_create_immutables
                    icons: [
                      Icon(Icons.home),
                      Icon(FontAwesomeIcons.file),
                      Icon(FontAwesomeIcons.userGraduate),
                      Icon(Icons.phone),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

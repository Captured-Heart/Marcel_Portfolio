// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_portfolio/Desktop/Screens/left_div_profile.dart';
import 'package:my_portfolio/Desktop/Widgets/ServicesGrid/service_grid.dart';
import 'package:my_portfolio/Mobile/Widgets/center_title_mobile.dart';
import 'package:my_portfolio/Mobile/Widgets/contact_us_mobile.dart';
import 'package:my_portfolio/Mobile/Widgets/edu_div_mobile.dart';
import 'package:my_portfolio/Mobile/Widgets/footer_mobile.dart';
import 'package:my_portfolio/Mobile/Widgets/ist_div_mobile.dart';
import 'package:my_portfolio/Mobile/Widgets/navbar_mobile.dart';
import 'package:my_portfolio/Utils/portfolio_util.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  late ScrollController _scrollController;
  double pixels = 0.0;
  int activeStep = 1;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;

        if (pixels >= offsetPortfolio) {
          activeStep = 2;
          if (pixels >= offsetAbout) {
            activeStep = 3;
          }
          if (pixels >= offsetContact) {
            activeStep = 4;
          }
        } else {
          activeStep = 1;
        }

        // print(pixels);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void scrollTo(int index) {
    _scrollController.animateTo(scrollPexels[index],
        duration: Duration(milliseconds: 1500), curve: Curves.linear);
  }

  List scrollPexels = [
    offsetMenu,
    offsetHome,
    offsetPortfolio,
    offsetAbout,
    offsetContact,
  ];
  static double offsetMenu = 0;
  static double offsetHome = 0;
  static double offsetPortfolio = 840;
  static double offsetAbout = 3670;
  static double offsetContact = 4690;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final PortfolioUtil portfolioUtil = PortfolioUtil();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _key,
      backgroundColor: Color(0xffE5E5E5),
      drawer: SafeArea(
        child: Drawer(
          child: LeftDivProfile(size: size),
        ),
      ),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: kToolbarHeight * 1.5,
        automaticallyImplyLeading: false,
        title: NavBarMobile(
          activeStep: activeStep,
          size: size,
          onStepReached: (index1) {
            setState(() {
              activeStep = index1;
              scrollTo(activeStep);

              if (activeStep == 0) {
                _key.currentState!.openDrawer();
                if (_key.currentState!.isDrawerOpen) {
                  activeStep = 1;
                }
              }
            });
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: size.width,
                child: Column(
                  children: [
                    IstDivMobile(size: size),
                    SizedBox(height: 25),

                    //!portfolio started here
                    CenterTitleMobile(
                      size: size,
                      title: 'PORTFOLIO',
                      centerTitle: 'Check Out Some of My Works',
                      subtitle:
                          'These are some of the works i have done so far both side projects and works for clients(of course with their permission)',
                    ),
                    MyServicesGrid(
                      width: size.width,
                      imgUrl: 'assets/images/medical.jpg',
                      title: 'Medical App',
                      content: portfolioUtil.portfolioMesssage[0],
                      gitHubUrl: portfolioUtil.portfolioGitHubUrl[0],
                    ),
                    SizedBox(height: 15),
                    MyServicesGrid(
                      width: size.width,
                      imgUrl: 'assets/images/emerieSUG.jpg',
                      title: 'EmerieSUG',
                      content: portfolioUtil.portfolioMesssage[1],
                      gitHubUrl: portfolioUtil.portfolioGitHubUrl[1],
                    ),
                    SizedBox(height: 15),
                    MyServicesGrid(
                      width: size.width,
                      imgUrl: 'assets/images/nemyMain.jpg',
                      title: 'NemyMain',
                      content: portfolioUtil.portfolioMesssage[2],
                      gitHubUrl: portfolioUtil.portfolioGitHubUrl[2],
                    ),
                    SizedBox(height: 15),
                    MyServicesGrid(
                      width: size.width,
                      imgUrl: 'assets/images/nemyAdmin.jpg',
                      title: 'NemyAdmin',
                      content: portfolioUtil.portfolioMesssage[3],
                      gitHubUrl: portfolioUtil.portfolioGitHubUrl[3],
                    ),
                    // SizedBox(height: 15),
                    // MyServicesGrid(width: size.width, imgUrl: '',),
                    SizedBox(height: 30),
                    //! Portfolio ended here
//

                    CenterTitleMobile(
                      size: size,
                      title: 'ABOUT',
                      centerTitle: 'Let Me Introduce Myself',
                      subtitle:
                          'Detailed insight to my qualifications and credentials',
                    ),
                    EducationDivMobile(size: size),
                    SizedBox(height: 30),
                    CenterTitleMobile(
                      size: size,
                      title: 'CONTACT ME',
                      centerTitle: 'I Love To Hear From You',
                      subtitle:
                          'if you like something you would love me to build for you or an enquiry, please message. i am available to work on your projects and bring your ideas to life. i am just one click away',
                    ),
                    ContactUsInfoFormMobile(size: size),
                    SizedBox(height: 15),
                    ContactInfoDetailsMobile(size: size),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              FooterMobile(size: size)
            ],
          ),
        ),
      ),
    );
  }
}

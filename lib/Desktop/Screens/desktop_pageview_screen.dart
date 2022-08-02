import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/Desktop/Screens/left_div_profile.dart';
import 'package:my_portfolio/Desktop/Screens/portfolio_screen.dart';
import 'package:my_portfolio/Desktop/Widgets/desktop_navbar.dart';
import 'package:my_portfolio/Provider/page_controller_provider.dart';
import 'package:my_portfolio/Utils/responsive.dart';
import 'desktop_home_screen.dart';
import 'desktop_about_me_screen.dart';
import 'desktop_contact_us_screen.dart';

class DesktopPageViewScreen extends ConsumerWidget {
  const DesktopPageViewScreen({
    Key? key,
  }) : super(key: key);

  // late ScrollController _scrollController;
  final double pixels = 0.0;

  // int activeStep = 0;
  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController = ScrollController();
  //   _scrollController.addListener(() {
  //     setState(() {
  //       pixels = _scrollController.position.pixels;
  //       if (pixels >= offsetPortfolio) {
  //         activeStep = 1;
  //         if (pixels >= offsetAbout) {
  //           activeStep = 2;
  //         }
  //         if (pixels >= offsetContact) {
  //           activeStep = 3;
  //         }
  //       } else {
  //         activeStep = 0;
  //       }
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _scrollController.dispose();
  // }

  // void scrollTo(double index) {
  //   _scrollController.animateTo(scrollPexels[index.toInt()],
  //       duration: Duration(milliseconds: 200), curve: Curves.linear);
  // }

  // List scrollPexels = [
  //   offsetHome,
  //   offsetPortfolio,
  //   offsetAbout,
  //   offsetContact,
  // ];
  // static double offsetHome = 0;
  // static double offsetPortfolio = 750;
  // static double offsetAbout = 2540;
  // static double offsetContact = 3800;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: PreferredSize(
        preferredSize: size,
        child: DesktopNavBar(
          size: size,
          onTapHome: () {
            ref.read(pageControllerProvider).jumpToPage(0);
          },
          onTapPortfolio: () {
            ref.read(pageControllerProvider).jumpToPage(1);
          },
          onTapAbout: () {
            ref.read(pageControllerProvider).jumpToPage(2);
          },
          onTopContact: () {
            ref.read(pageControllerProvider).jumpToPage(3);
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
                : const SizedBox(),

            //! THE MIDDLE DIV DOWN TO THE END OF THE WEBSITE
            Expanded(
                flex: 10,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    ref.read(pageIndexProvider.state).update((state) => index);
                  },
                  children: [
                    //! HOME SCREEN
                    DesktopHomeScreen(
                      size: size,
                      loremp:
                          'A flutter developer with front end development skills. I developed the passion and enduring enthusiasm for technology especially programming during my course of formal education. I am passionate about leveraging my diverse backgrounds to decipher challenging problems and create delightful experiences. ',
                    ),
                    //!PORTFOLIO SCREEN
                    DesktopPortfolioScreen(size: size),
                    //! ABOUT ME PAGE
                    DesktopAboutMe(size: size),
                    //! CONTACT ME PAGE
                    DesktopContactUs(size: size),
                  ],
                )

                // DesktopFooterWidget(size: size),

                //  SingleChildScrollView(
                //   child: Container(
                //     margin: EdgeInsets.symmetric(horizontal: 20),
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [

                //       ],
                //     ),
                //   ),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}



 //! THE RIGHT DIV CONTAINER NAVIGATION RAILS!
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //       alignment: Alignment.center,
            //       color: Colors.white,
            //       height: size.height,
            //       child: IconStepper(
            //         direction: Axis.vertical,
            //         enableNextPreviousButtons: false,
            //         activeStep: activeStep,
            //         stepPadding: 10,
            //         activeStepBorderWidth: 5,
            //         activeStepBorderColor: Colors.grey[400],
            //         onStepReached: (index1) {
            //           setState(() {
            //             scrollTo(index1.toDouble());
            //             // activeStep = index1;
            //           });
            //         },
            //         stepReachedAnimationEffect: Curves.linear,
            //         stepReachedAnimationDuration: Duration(seconds: 10),
            //         activeStepColor: Colors.orange[500],
            //         lineLength: size.height * 0.125,
            //         // ignore: prefer_const_literals_to_create_immutables
            //         icons: [
            //           Icon(Icons.home),
            //           Icon(FontAwesomeIcons.file),
            //           Icon(FontAwesomeIcons.userGraduate),
            //           Icon(Icons.phone),
            //         ],
            //       )),
            // )
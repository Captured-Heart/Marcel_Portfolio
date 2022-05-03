// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';
import 'package:my_portfolio/Desktop/Screens/left_div_profile.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_left.dart';
import 'package:my_portfolio/Desktop/Widgets/ContactUs/contact_us_info_right.dart';
import 'package:my_portfolio/Desktop/Widgets/service_grid.dart';

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

        //   // ignore: avoid_print
        print(pixels);
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
  static double offsetPortfolio = 715;
  static double offsetAbout = 2345;
  static double offsetContact = 3427;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
          title: IconStepper(
            direction: Axis.horizontal,
            scrollingDisabled: true,
            enableNextPreviousButtons: false,
            activeStep: activeStep,
            // activeStep,
            stepPadding: 1,
            activeStepBorderWidth: 5,
            activeStepBorderColor: Colors.grey[400],
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
                print(activeStep);
              });
            },
            stepReachedAnimationEffect: Curves.linear,
            stepReachedAnimationDuration: Duration(seconds: 10),
            activeStepColor: Colors.orange[400],
            lineLength: size.width * 0.05,
            // ignore: prefer_const_literals_to_create_immutables
            icons: [
              Icon(Icons.menu),
              Icon(Icons.home),
              Icon(FontAwesomeIcons.file),
              Icon(FontAwesomeIcons.userGraduate),
              Icon(Icons.phone),
            ],
          )),
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
                    CenterTitleMobile(),
                    MyServicesGrid(width: size.width),
                    SizedBox(height: 15),
                    MyServicesGrid(width: size.width),
                    SizedBox(height: 15),
                    MyServicesGrid(width: size.width),
                    SizedBox(height: 15),
                    MyServicesGrid(width: size.width),
                    SizedBox(height: 15),
                    MyServicesGrid(width: size.width),
                    SizedBox(height: 30),
                    CenterTitleMobile(),
                    EducationDivMobile(size: size),
                    SizedBox(height: 30),
                    CenterTitleMobile(),
                    ContactUsInfoFormMobile(size: size),
                    SizedBox(height: 15),
                    ContactInfoDetailsMobile(size: size),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: Column(
                  children: const [
                    Text(
                      '2022, All Rights Reserved.',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'UMUNTU NGUMUNTU NGABANTU',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactUsInfoFormMobile extends StatelessWidget {
  const ContactUsInfoFormMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 3,
        intensity: 0.6,
        surfaceIntensity: 0.15,
        lightSource: LightSource.topRight,
        // color: Colors.grey,
      ),
      child: Container(
        width: size.width,
        color: Colors.white,
        child: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldOptions(title: 'Your Full Name (Required)'),
              TextFieldOptions(title: 'Your Email  (Required)'),
              TextFieldOptions(title: 'Phone Number'),
              TextFieldOptions(title: 'Your Message', maxlines: 3),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width * 0.5,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                    ),
                    child: Text(
                      'SEND MESSAGE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class ContactInfoDetailsMobile extends StatelessWidget {
  const ContactInfoDetailsMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.9,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.046,
                backgroundColor: Colors.orange[500],
                child: Icon(
                  Icons.location_on_sharp,
                  size: size.width * 0.065,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 15),
              Text('Roar Hub, University of Nigeria, Nsukka',
                  style: textStyle(context))
            ],
          ),
          SizedBox(height: 15),
          ContactInfoDetails(
            size: size * 2.3,
            text: 'knkpozi@gmail.com',
            text2: 'kcmarcel96@gmail.com',
            icon: Icons.email_outlined,
          ),
          SizedBox(height: 15),
          ContactInfoDetails(
            size: size * 2.3,
            icon: Icons.phone,
            text2: '+2347051678158',
            text: '+2348052340065',
          )
        ],
      ),
    );
  }
}

class EducationDivMobile extends StatelessWidget {
  const EducationDivMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 3,
        intensity: 0.6,
        surfaceIntensity: 0.15,
        lightSource: LightSource.topRight,
        // color: Colors.grey,
      ),
      child: Container(
        // height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          children: [
            EducationDivOptonsMobile(size: size),
            SizedBox(
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.orange[400],
              ),
              width: size.width * 0.85,
              height: 20,
            ),
            EducationDivOptonsMobile(size: size),
            SizedBox(
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.orange[400],
              ),
              width: size.width * 0.85,
              height: 20,
            ),
            EducationDivOptonsMobile(size: size),
          ],
        ),
      ),
    );
  }
}

class EducationDivOptonsMobile extends StatelessWidget {
  const EducationDivOptonsMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.35,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 10,
                ),
                child: Text(
                  'Roar Hub Nigeria',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Divider(
                              thickness: 1,
                              height: 1,
                              color: Colors.orange[400]),
                          width: 14,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Student',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '(June 2020 - August 2022)',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 10,
                ),
                child: Text(
                  'Front-End Engineer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Text(
                lorem(
                  paragraphs: 1,
                  words: 45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CenterTitleMobile extends StatelessWidget {
  const CenterTitleMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Portfolio',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 25,
              color: Colors.orange[400],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Check Out Some of My Works',
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 28,
              foreground: Paint()
                ..strokeWidth = 3.2
                ..style = PaintingStyle.stroke
                ..filterQuality = FilterQuality.low
                ..strokeMiterLimit = 10,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'These are some of the works i have done so far both side projects and works for clients(of course with their permission)',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

class IstDivMobile extends StatelessWidget {
  const IstDivMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: size.height,
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          depth: 1,
          intensity: 0.2,
          surfaceIntensity: 0.1,
          lightSource: LightSource.topLeft,
          color: Colors.white,
        ),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/myDp1.png',
                  fit: BoxFit.cover,
                  // height: size.height * 0.6,
                  width: size.width,
                  scale: 0.5,
                ),
              ),
              Text('''I'm Nkpozi Marcel Kelechi 
Full Stack Developer
          '''),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'I’m a flutter developer with front end development skills. I developed the passion and enduring enthusiasm for technology especially programming during my course of formal education. I am passionate about leveraging my diverse backgrounds to decipher challenging problems and create delightful experiences. ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    Text(
                      'HIRE ME',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      (Icons.arrow_forward_rounded),
                    )
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange[400]!),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size.fromWidth(size.width * 0.6),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                    ),
                    textStyle:
                        MaterialStateProperty.all<TextStyle>(const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ))),
              )
            ]),
      ),
    );
  }
}

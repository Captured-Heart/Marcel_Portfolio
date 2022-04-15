// ignore_for_file: prefer_const_constructors

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Desktop/Widgets/desktop_navbar.dart';
import 'package:my_portfolio/Desktop/Widgets/ist_center_div.dart';
import 'package:my_portfolio/Desktop/Widgets/service_grid.dart';

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // DesktopNavBar(size: size),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LeftDivProfile(size: size),

                  //!
                  Expanded(
                    flex: 10,
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
                          CenterTitleWidget(size: size),
                          Container(
                            width: size.width,
                            color: Colors.teal,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                EducationOptions(size: size),
                                Divider(),
                                EducationOptions(size: size),
                                Divider(),
                                EducationOptions(size: size),
                              ],
                            ),
                          ),
                          CenterTitleWidget(size: size),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height,
                      color: Colors.purple[200],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LeftDivProfile extends StatelessWidget {
  const LeftDivProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        // height: size.height * 2.5,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        color: Colors.white,
        child: Column(children: [
          CircleAvatar(
            backgroundColor: Color(0xffE5E5E5),
            radius: size.width * 0.05,
            backgroundImage: AssetImage(
              'assets/images/myDp.png',
            ),
          ),
          Text('Nkpozi Marcel Kelechi'),
          Text('Full Stack Developer'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SocialButtons(icons: FontAwesomeIcons.facebookF),
              SocialButtons(icons: FontAwesomeIcons.facebookMessenger),
              SocialButtons(icons: FontAwesomeIcons.twitter),
              SocialButtons(icons: FontAwesomeIcons.youtube),
              SocialButtons(icons: FontAwesomeIcons.instagramSquare),
              SocialButtons(icons: FontAwesomeIcons.github),
            ],
          ),
          Divider(),
          LeftDivDetails(size: size),
          Divider(),
          LeftDivLanguages(size: size),
          Divider(),
          LeftDivSkills(size: size),
          Divider(),
          LeftDivExtraSkills(
            size: size,
            text: 'BootStrap, Material Fonts',
          ),
          Divider(),
          Container(
            height: size.height * 0.05,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.orange[400],
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'DOWNLOAD CV',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(width: 7),
                  Icon(Icons.file_download_outlined)
                ]),
          ),
        ]),
      ),
    );
  }
}

class EducationOptions extends StatelessWidget {
  const EducationOptions({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: size.height * 0.008,
        bottom: size.height * 0.02,
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      width: double.infinity,
      // height: size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.2,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Text(
                  'University of toronto',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Text('Student'),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: Text(
                  'Certificate of web training',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Text(
                lorem(
                  paragraphs: 2,
                  words: 95,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CenterTitleWidget extends StatelessWidget {
  const CenterTitleWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.3,
      height: size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Services',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            lorem(paragraphs: 1, words: 20),
          )
        ],
      ),
    );
  }
}

class LeftDivDetails extends StatelessWidget {
  const LeftDivDetails({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          LeftDivDetailsComponents(
            leading: 'Age: ',
            trailing: '24',
          ),
          LeftDivDetailsComponents(
            leading: 'Email: ',
            trailing: 'knkpozi@gmail.com',
          ),
          LeftDivDetailsComponents(
            leading: 'Country: ',
            trailing: 'Enugu, Nigeria',
          ),
          LeftDivDetailsComponents(
            leading: 'Address: ',
            trailing: 'Roar Hub, University of Nigeria, Nsukka',
          ),
          LeftDivDetailsComponents(
            leading: 'FreeLance: ',
            trailing: 'Available',
            textColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class LeftDivExtraSkills extends StatelessWidget {
  const LeftDivExtraSkills({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);
  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.22,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Extra Skills',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.cabin,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.headphones,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.hide_image_outlined,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.workspaces_sharp,
                color: Colors.orange[400],
              ),
              SizedBox(width: 15),
              Text(text)
            ],
          ),
        ],
      ),
    );
  }
}

class LeftDivSkills extends StatelessWidget {
  const LeftDivSkills({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.22,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          LeftDivLanguagesComponents(
            leading: 'Html',
            trailing: '80%',
            value: 0.8,
          ),
          LeftDivLanguagesComponents(
            leading: 'CSS',
            trailing: '70%',
            value: 0.7,
          ),
          LeftDivLanguagesComponents(
            leading: 'JS',
            trailing: '40%',
            value: 0.4,
          ),
          LeftDivLanguagesComponents(
            leading: 'Flutter',
            trailing: '85%',
            value: 0.85,
          ),
          LeftDivLanguagesComponents(
            leading: 'NodeJS',
            trailing: '15%',
            value: 0.15,
          ),
          LeftDivLanguagesComponents(
            leading: 'WordPress',
            trailing: '50%',
            value: 0.55,
          ),
        ],
      ),
    );
  }
}

class LeftDivLanguages extends StatelessWidget {
  const LeftDivLanguages({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.19,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Languages',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          LeftDivLanguagesComponents(
            leading: 'English',
            trailing: '85%',
            value: 0.85,
          ),
          LeftDivLanguagesComponents(
            leading: 'Igbo',
            trailing: '80%',
            value: 0.8,
          ),
          LeftDivLanguagesComponents(
            leading: 'French',
            trailing: '10%',
            value: 0.1,
          ),
          LeftDivLanguagesComponents(
            leading: 'Hausa',
            trailing: '15%',
            value: 0.15,
          ),
        ],
      ),
    );
  }
}

class LeftDivDetailsComponents extends StatelessWidget {
  const LeftDivDetailsComponents({
    Key? key,
    required this.leading,
    required this.trailing,
    this.textColor,
  }) : super(key: key);
  final String leading, trailing;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          color: Colors.orange[400],
          child: Text(leading),
        ),
        Text(
          trailing,
          style: TextStyle(color: textColor),
        )
      ],
    );
  }
}

class LeftDivLanguagesComponents extends StatelessWidget {
  const LeftDivLanguagesComponents({
    Key? key,
    required this.leading,
    required this.trailing,
    required this.value,
  }) : super(key: key);
  final String leading, trailing;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(leading),
            Text(trailing),
          ],
        ),
        LinearProgressIndicator(
          backgroundColor: Color(0xffE5E5E5),
          value: value,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.orange[400]!),
        )
      ],
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
    required this.icons,
  }) : super(key: key);
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return ShakeAnimatedWidget(
      shakeAngle: Rotation.deg(z: 40),
      curve: Curves.linear,
      child: Container(
        // height: size.height * 0.1,
        // width: size.width * 0.1,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.orange[400],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icons,
        ),
      ),
    );
  }
}

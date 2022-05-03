// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Mobile/mobile_screen.dart';
import 'package:my_portfolio/responsive.dart';

import 'Desktop/Screens/desktop_homescreen.dart';
import 'config/config.dart';

final config = Configurations();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: config.apiKey,
      appId: config.appId,
      messagingSenderId: config.messagingSenderId,
      projectId: config.projectId,
      storageBucket: config.storageBucket,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nkpozi Marcel Kelechi',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Responsive(
        desktop: DesktopHomePage(),
        mobile: MobileScreen(),
      ),
    );
  }
}

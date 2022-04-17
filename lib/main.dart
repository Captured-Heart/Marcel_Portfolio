// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import 'Desktop/Screens/desktop_homescreen.dart';

void main() {
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
      home: const DesktopHomePage(),
    );
  }
}


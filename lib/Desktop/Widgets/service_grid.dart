// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyServicesGrid extends StatelessWidget {
  const MyServicesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 12,
        intensity: 0.4,
        surfaceIntensity: 0.1,
        lightSource: LightSource.bottom,
        // color: Colors.grey,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        color: Colors.white,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            Icons.wifi,
            size: 70,
            color: Colors.orange[300],
          ),
          Text(
            'Web Development',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Blog, E-commerce')
        ]),
      ),
    );
  }
}

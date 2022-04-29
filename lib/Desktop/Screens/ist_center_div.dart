// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class IstCenterDivDesktop extends StatelessWidget {
  const IstCenterDivDesktop({
    Key? key,
    required this.size,
    required this.loremp,
  }) : super(key: key);

  final Size size;
  final String loremp;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        depth: 10,
        intensity: 0.4,
        surfaceIntensity: 0.1,
        lightSource: LightSource.topLeft,
        color: Colors.grey,
      ),
      child: Container(
        color: Colors.white,
        height: size.height * 0.7,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: size.height * 0.35,
                padding: EdgeInsets.only(left: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      '''I'm Nkpozi Marcel Kelechi 
Full Stack Developer''',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                    // Text(
                    //   'Full Stack Developer ',
                    // ),
                    Text(
                      loremp,
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
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.orange[400]!),
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size.fromWidth(size.width * 0.11),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 5,
                            ),
                          ),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  // color: Colors.blueAccent,
                  // height: size.height ,
                  fit: FlexFit.tight,
                  // width: size.width * 0.4,
                  // height: size.height * 0.5,
                  child: Image.asset(
                    'assets/images/myDp1.png',
                    fit: BoxFit.fitHeight,

                    // scale: 0.008,
                    // height: size.height * 0.38,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

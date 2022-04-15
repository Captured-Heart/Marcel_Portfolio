import 'package:flutter/material.dart';

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
    return Container(
      color: Colors.white,
      height: size.height * 0.5,
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
              SizedBox(
                // color: Colors.blueAccent,
                // height: size.height ,

                width: size.width * 0.4,
                height: size.height * 0.45,
                child: Image.asset(
                  'assets/images/myDp.png',
                  fit: BoxFit.fill,
                  // scale: 0.008,
                  // height: size.height * 0.38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

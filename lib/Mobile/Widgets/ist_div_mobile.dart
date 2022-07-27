import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Utils/url_launcher.dart';

class IstDivMobile extends StatelessWidget {
  IstDivMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final UrlLauncher urlLauncher = UrlLauncher();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      // height: size.height,
      width: size.width,
      child: Neumorphic(
        padding: EdgeInsets.symmetric(vertical: 20),
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
              SizedBox(height: 20),
              AutoSizeText(
                'Nkpozi Marcel Kelechi',
                maxLines: 1,
                style: GoogleFonts.oleoScript(
                    fontWeight: FontWeight.bold, fontSize: size.width * 0.07),
              ),
              SizedBox(height: 5),
              AutoSizeText(
                'Full Stack Flutter Developer',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'A flutter developer with front end development skills. I developed the passion and enduring enthusiasm for technology especially programming during my course of formal education. I am passionate about leveraging my diverse backgrounds to decipher challenging problems and create delightful experiences. ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  urlLauncher.launchSocialMediaUrls(
                    context,
                    url: Uri.parse(
                      'https://firebasestorage.googleapis.com/v0/b/nkpozi-marcel-42a08.appspot.com/o/Kelechi_Marcel_Nkpozi_Resume.pdf?alt=media&token=c39f7a7a-fdcc-4ac8-b91b-efd0a46bb0ac',
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    Text(
                      'DOWNLOAD MY CV',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      (Icons.download),
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
              ),
              SizedBox(height: 10),
            ]),
      ),
    );
  }
}

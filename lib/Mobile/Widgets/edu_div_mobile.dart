import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:my_portfolio/Utils/responsive.dart';

class EducationDivMobile extends StatelessWidget {
  const EducationDivMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
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
        padding: const EdgeInsets.only(bottom: 20),
        width: size.width,
        color: Colors.white,
        child: Column(
          children: [
            EducationDivOptonsMobile(
              size: size,
              date: 'Feb 2022 - Present',
              company: 'Nestuge Technologies',
              position: 'Flutter Intern',
              role:
                  ' - I worked remotely Using Visual Studio, Flutter/Dart and other softwares tools to maintain codes that were used to develop the Nestuge Products(Hubs & Campuskonekt) Mobile App.',
            ),
            SizedBox(
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.orange[400],
              ),
              width: size.width * 0.85,
              height: 20,
            ),
            EducationDivOptonsMobile(
                size: size,
                date: 'Nov 2022 - Jan 2022',
                company: 'Miyotl',
                position: 'Flutter Consultant',
                role:
                    '''- A company that uses their mobile app to reduce the extinction of the community that speaks a Mexican language

- I was recruited to help maintain the code base, fix bugs and add new features where need be.'''),
            SizedBox(
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.orange[400],
              ),
              width: size.width * 0.85,
              height: 20,
            ),
            EducationDivOptonsMobile(
                size: size,
                date: 'Oct 2019 - Apr 2021',
                company: 'Roar Hub Nigeria',
                position: 'C.E.O, C.T.O,  JOAN-Handiy(Start-up)',
                role:
                    '- I Used Html/CSS/Js to build websites, dashboards for the patients and hospital softwares.'),
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
    this.role,
    this.date,
    this.position,
    this.company,
  }) : super(key: key);

  final Size size;
  final String? role, date, position, company;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Responsive.isDesktop(context)
                ? size.width * 0.25
                : size.width * 0.35,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 10,
                ),
                child: Text(
                  company!,
                  style: Responsive.isDesktop(context)
                      ? const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        )
                      : const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                ),
              ),
              subtitle: Text(
                date!,
                style: Responsive.isDesktop(context)
                    ? const TextStyle(fontSize: 17, fontWeight: FontWeight.w600)
                    : const TextStyle(fontWeight: FontWeight.w500),
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
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Divider(
                          thickness: 1, height: 1, color: Colors.orange[400]),
                      width: Responsive.isDesktop(context) ? 30 : 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: AutoSizeText(
                        position!,
                        style: Responsive.isDesktop(context)
                            ? const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)
                            : const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              subtitle: AutoSizeText(
                role!,
                style: Responsive.isDesktop(context)
                    ? const TextStyle(fontSize: 24)
                    : const TextStyle(),
                // lorem(
                //   paragraphs: 1,
                //   words: 45,
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

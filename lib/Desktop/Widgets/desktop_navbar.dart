import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Provider/page_controller_provider.dart';
import 'package:my_portfolio/Utils/responsive.dart';

final pageIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class DesktopNavBar extends ConsumerStatefulWidget {
  const DesktopNavBar({
    Key? key,
    required this.size,
    required this.onTapAbout,
    required this.onTapHome,
    required this.onTapPortfolio,
    required this.onTopContact,
  }) : super(key: key);

  final Size size;
  final VoidCallback onTapAbout, onTapHome, onTapPortfolio, onTopContact;
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends ConsumerState<DesktopNavBar> {
  final List _hover = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    // final pageIndex = ref.watch(pageIndexProvider);
    final pageIndex = ref.watch(pageIndexProvider);
    return Container(
      height: widget.size.height * 0.08,
      padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.06),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(
          color: Colors.grey,
          width: 1.4,
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text(
                'C-H ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.purple,
              )
            ],
          ),
          SizedBox(
            width: Responsive.isDesktop(context)
                ? widget.size.width * 0.45
                : widget.size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: widget.onTapHome,
                  onHover: ((value) {
                    setState(() {
                      value ? _hover[0] = true : _hover[0] = false;
                    });
                  }),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Home',
                        style: textStyle(_hover, 0, pageIndex),
                      ),
                   (_hover[0] || pageIndex == 0) ?SizedBox(
                        width: 50,
                        child: Divider(
                          color: Colors.orange[400],
                          height: 4.5,
                          thickness: 3,
                        ),
                      ) : const SizedBox()
                    ],
                  ),
                ),

                //!PORTFOLIO
                InkWell(
                  onTap: widget.onTapPortfolio,
                  onHover: ((value) {
                    setState(() {
                      value ? _hover[1] = true : _hover[1] = false;
                    });
                  }),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Portfolio',
                        style: textStyle(_hover, 1, pageIndex),
                      ),
                    (_hover[1] || pageIndex == 1) ?  SizedBox(
                        width: 55,
                        child: Divider(
                          color: Colors.orange[400],
                          height: 4.5,
                          thickness: 3,
                        ),
                      ) : const SizedBox()
                    ],
                  ),
                ),

                //!ABOUT ME
                InkWell(
                    onTap: widget.onTapAbout,
                    onHover: ((value) {
                      setState(() {
                        value ? _hover[2] = true : _hover[2] = false;
                      });
                    }),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'About Me',
                          style: textStyle(_hover, 2, pageIndex),
                        ),
                   (_hover[2] || pageIndex == 2) ?     SizedBox(
                          width: 60,
                          child: Divider(
                            color: Colors.orange[400],
                            height: 4.5,
                            thickness: 3,
                          ),
                        ) : const SizedBox()
                      ],
                    )),

                //!CONTACT ME
                TextButton(
                    onPressed: widget.onTopContact,
                    onHover: ((value) {
                      setState(() {
                        value ? _hover[3] = true : _hover[3] = false;
                      });
                    }),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Contact Me',
                          style: textStyle(_hover, 3, pageIndex),
                        ),
                     (_hover[3] || pageIndex == 3) ?  SizedBox(
                          width: 80,
                          child: Divider(
                            color: Colors.orange[400],
                            height: 4.5,
                            thickness: 3,
                          ),
                        ) : const SizedBox()
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle textStyle(dynamic _hover, int index, int pageIndex) {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: (!_hover[index] && pageIndex != index) ? 18 : 20,
    color: (!_hover[index] && pageIndex != index)
        ? Colors.black
        : Colors.orange[400],
  );
}

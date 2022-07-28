import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';
import 'package:my_portfolio/Utils/responsive.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({
    Key? key,
    required this.activePage,
    required this.size,
    required this.onStepReached,
  }) : super(key: key);

  final int activePage;
  final Size size;
  final Function(int) onStepReached;

  @override
  Widget build(BuildContext context) {
    return IconStepper(
      direction: Axis.horizontal,
      scrollingDisabled: true,
      stepRadius: Responsive.isMobile(context) ? 22 : 24,
      enableNextPreviousButtons: false,
      activeStep: activePage,
      stepPadding: 3,
      activeStepBorderWidth: 2,
      activeStepBorderColor: Colors.grey[400],
      onStepReached: onStepReached,
      stepReachedAnimationEffect: Curves.linear,
      stepReachedAnimationDuration: const Duration(seconds: 2),
      activeStepColor: Colors.orange[400],
      lineLength: size.width * 0.045,
      icons: const [
        // const Icon(Icons.menu),
         Icon(Icons.home),
         Icon(FontAwesomeIcons.file),
         Icon(FontAwesomeIcons.userGraduate),
         Icon(Icons.phone)
      ],
    );
  }
}

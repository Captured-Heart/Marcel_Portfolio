import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:im_stepper/stepper.dart';
import 'package:my_portfolio/Utils/responsive.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({
    Key? key,
    required this.activeStep,
    required this.size,
    required this.onStepReached,
  }) : super(key: key);

  final int activeStep;
  final Size size;
  final Function(int) onStepReached;

  @override
  Widget build(BuildContext context) {
    return IconStepper(
      direction: Axis.horizontal,
      scrollingDisabled: true,
      stepRadius: Responsive.isMobile(context) ? 19 : 24,
      enableNextPreviousButtons: false,
      activeStep: activeStep,
      stepPadding: 3,
      activeStepBorderWidth: 2,
      activeStepBorderColor: Colors.grey[400],
      onStepReached: onStepReached,
      stepReachedAnimationEffect: Curves.linear,
      stepReachedAnimationDuration: Duration(seconds: 2),
      activeStepColor: Colors.orange[400],
      lineLength: size.width * 0.045,
      // ignore: prefer_const_literals_to_create_immutables
      icons: [
        Icon(Icons.menu),
        Icon(Icons.home),
        Icon(FontAwesomeIcons.file),
        Icon(FontAwesomeIcons.userGraduate),
        Icon(Icons.phone)
      ],
    );
  }
}

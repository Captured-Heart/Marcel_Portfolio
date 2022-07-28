import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Desktop/Screens/left_div_profile.dart';
import 'package:my_portfolio/Mobile/Screens/mobile_about_screen.dart';
import 'package:my_portfolio/Mobile/Screens/mobile_contact_us_screen.dart';
import 'package:my_portfolio/Mobile/Screens/mobile_home_screen.dart';
import 'package:my_portfolio/Mobile/Widgets/navbar_mobile.dart';
import 'package:my_portfolio/Provider/page_controller_provider.dart';

import 'mobile_project_screen.dart';

final activePageProvider = StateProvider((ref) => 0);

class MobileScreen extends ConsumerWidget {
  MobileScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    final activePage = ref.watch(activePageProvider);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _key,
      backgroundColor: const Color(0xffE5E5E5),
      drawer: SafeArea(
        child: Drawer(
          child: LeftDivProfile(size: size),
        ),
      ),
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: kToolbarHeight * 1.5,
        // automaticallyImplyLeading: false,
        leading: IconButton(
          tooltip: 'Menu',
          padding: const EdgeInsets.only(left: 15),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: Container(
            clipBehavior: Clip.none,
            height: 80,
            width: 80,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              // color: Colors.grey[400],
              shape: BoxShape.circle,
              border: Border.all(color: Colors.orange[400]!)
            ),
            child: const Icon(
              FontAwesomeIcons.bars,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ),
        leadingWidth: 65,

        title: NavBarMobile(
          activePage: activePage,
          size: size,
          onStepReached: (index1) {
            ref.read(pageControllerProvider).jumpToPage(index1);
            // ref.read(activePageProvider.state).update((state) => index1);
          },
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            ref.read(activePageProvider.state).update((state) => index);
          },
          children: [
            //
            MobileHomeScreen(size: size),

            //!portfolio started here
            MobileProjectScreen(size: size),

            MobileAboutScreen(size: size),

            MobileContactUsScreen(size: size),
          ],
        ),
      ),
    );
  }
}

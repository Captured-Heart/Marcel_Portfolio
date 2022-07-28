import 'package:flutter/material.dart';

import '../../Utils/portfolio_util.dart';
import '../Widgets/center_title_mobile.dart';
import '../Widgets/mobile_service_grid.dart';

class MobileProjectScreen extends StatelessWidget {
  MobileProjectScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final PortfolioUtil portfolioUtil = PortfolioUtil();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
      child: ListView(
        shrinkWrap: true,
        cacheExtent: 10,
        children: [
          CenterTitleMobile(
            size: size,
            title: 'PORTFOLIO',
            centerTitle: 'Check Out Some of My Works',
            subtitle:
                'These are some of the works i have done so far both side projects and works for clients(of course with their permission)',
          ),
          MobileServicesGrid(
            width: size.width,
            imgUrl: 'assets/images/medical.jpg',
            title: 'Medical App',
            content: portfolioUtil.portfolioMesssage[0],
            gitHubUrl: portfolioUtil.portfolioGitHubUrl[0],
          ),
          const SizedBox(height: 15),
          MobileServicesGrid(
            width: size.width,
            imgUrl: 'assets/images/emerieSUG.jpg',
            title: 'EmerieSUG',
            content: portfolioUtil.portfolioMesssage[1],
            gitHubUrl: portfolioUtil.portfolioGitHubUrl[1],
          ),
          const SizedBox(height: 15),
          MobileServicesGrid(
            width: size.width,
            imgUrl: 'assets/images/nemyMain.jpg',
            title: 'NemyMain',
            content: portfolioUtil.portfolioMesssage[2],
            gitHubUrl: portfolioUtil.portfolioGitHubUrl[2],
          ),
          const SizedBox(height: 15),
          MobileServicesGrid(
            width: size.width,
            imgUrl: 'assets/images/nemyAdmin.jpg',
            title: 'NemyAdmin',
            content: portfolioUtil.portfolioMesssage[3],
            gitHubUrl: portfolioUtil.portfolioGitHubUrl[3],
          ),
        ],
      ),
    );
  }
}

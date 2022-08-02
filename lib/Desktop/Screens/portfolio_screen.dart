import 'package:flutter/material.dart';

import '../../Utils/portfolio_util.dart';
import '../../Utils/responsive.dart';
import '../Widgets/ServicesGrid/service_grid.dart';
import '../Widgets/center_title.dart';

class DesktopPortfolioScreen extends StatelessWidget {
  DesktopPortfolioScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final PortfolioUtil portfolioUtil = PortfolioUtil();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
          EdgeInsets.symmetric(horizontal: 20.0, vertical: size.height * 0.08),
      controller: scrollController,
      shrinkWrap: true,
      children: [
        CenterTitleWidget(
          size: size,
          title: 'Portfolio',
          centerTitle: 'Check Out Some of My Works.',
          subtitle:
              'These are some of the works I have done so far both side projects and works for Clients(of course with their permission).',
        ),
        GridView.count(
          // physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: Responsive.isTablet(context) ? 1 : 4,
          mainAxisSpacing: 135,
          crossAxisSpacing: 35,

          shrinkWrap: true,
          childAspectRatio: Responsive.isDesktop(context) ? 0.35 : 1.3,
          children: [
            MyServicesGrid(
              imgUrl: 'assets/images/medical.jpg',
              title: 'Medical App',
              content: portfolioUtil.portfolioMesssage[0],
              gitHubUrl: portfolioUtil.portfolioGitHubUrl[0],
            ),
            MyServicesGrid(
              imgUrl: 'assets/images/emerieSUG.jpg',
              title: 'EmerieSUG',
              content: portfolioUtil.portfolioMesssage[1],
              gitHubUrl: portfolioUtil.portfolioGitHubUrl[1],
            ),
            MyServicesGrid(
              imgUrl: 'assets/images/nemyMain.jpg',
              title: 'NemyMain',
              content: portfolioUtil.portfolioMesssage[2],
              gitHubUrl: portfolioUtil.portfolioGitHubUrl[2],
            ),
            MyServicesGrid(
              imgUrl: 'assets/images/nemyAdmin.jpg',
              title: 'NemyAdmin',
              content: portfolioUtil.portfolioMesssage[3],
              gitHubUrl: portfolioUtil.portfolioGitHubUrl[3],
            ),
          ],
        ),
      ],
    );
  }
}

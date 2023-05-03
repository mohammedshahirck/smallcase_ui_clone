import 'package:flutter/material.dart';
import 'package:smallcase/constants/text.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';
import 'package:smallcase/widgets/connect_brocker.dart';
import 'package:smallcase/widgets/custom_appbar.dart';
import 'package:smallcase/widgets/expansions.dart';
import 'package:smallcase/widgets/main_container.dart';
import 'package:smallcase/widgets/pick_smallcase.dart';
import 'package:smallcase/widgets/smallcase_specials.dart';
import 'package:smallcase/widgets/stacked_container.dart';
import 'package:smallcase/widgets/stock_container.dart';
import 'package:smallcase/widgets/trending_smallcase.dart';
import 'package:smallcase/widgets/youtube_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorPellets.backgroundcolor,
      body: RefreshIndicator(
        backgroundColor: ColorPellets.refreshIndicator,
        onRefresh: () async {},
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hsizes.size30,
                const CustomAppbar(),
                const MainContainer(),
                Hsizes.size20,
                Padding(
                  padding: EdgeInsets.only(left: size.width / 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Ideal for getting started',
                              style: TextStyles.subtitle),
                          Hsizes.size2,
                          Text('Start your smallcase journey',
                              style: TextStyles.contenttext),
                        ],
                      ),
                    ],
                  ),
                ),
                Hsizes.size20,
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: size.height / 3,
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification:
                        (OverscrollIndicatorNotification overscroll) {
                      overscroll.disallowIndicator();
                      return true;
                    },
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return StackedContainerWidget(
                          index: index,
                        );
                      },
                      itemCount: listcontainer.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                    ),
                  ),
                ),
                Hsizes.size10,
                Padding(
                  padding: EdgeInsets.all(size.width / 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Trending smallcases⚡', style: TextStyles.title),
                        ],
                      ),
                      Hsizes.size10,
                      const Text('Ranked list of user favorites',
                          style: TextStyles.maincontent),
                      Hsizes.size20,
                      const TrendingSmallcases(),
                      Hsizes.size30,
                      Container(
                        height: size.height / 8,
                        width: size.width / 1,
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        decoration: BoxDecoration(
                            color: ColorPellets.stackedcontainer,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Hsizes.size10,
                                Text(
                                  'There is smallcase for everyone.\nfind yours now',
                                  style: TextStyles.maincontent,
                                ),
                                Hsizes.size12,
                                Text(
                                  'Start here',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              height: size.height / 2,
                              width: size.width / 5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  opacity: .5,
                                  image: AssetImage(
                                      'assets/image/Find-your-sc-blog_Hero-Image-removebg-preview.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Hsizes.size50,
                      const Text(
                        'Take Your Pick',
                        style: TextStyle(
                            color: ColorPellets.mainText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Hsizes.size10,
                      const Text(
                        'Popular collection of smallcases',
                        style: TextStyle(
                          color: ColorPellets.iconColor,
                        ),
                      ),
                      Hsizes.size20,
                      const PickSmallcase(),
                      Hsizes.size30,
                      // expansion tiles
                      const ExpansionsTiles(),
                      Hsizes.size20,
                      Row(
                        children: const [
                          Text(
                            'Having doubts before moving ahead?',
                            style: TextStyle(color: ColorPellets.iconColor),
                          ),
                          Wsize.size10,
                          Text(
                            'See FAQs',
                            style: TextStyle(
                                color: ColorPellets.progressindecator),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Hsizes.size30,
                const SmallcaseSpaciels(),
                Hsizes.size20,
                const ConnectWithBrocker(),
                const StockContainer(),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Understanding smallcases',
                    style: TextStyles.subtitle,
                  ),
                ),
                const YoutubeSlider(),
                Hsizes.size30,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

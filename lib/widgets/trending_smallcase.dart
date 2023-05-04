import 'package:flutter/material.dart';
import 'package:smallcase/constants/text.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';

class TrendingSmallcases extends StatelessWidget {
  const TrendingSmallcases({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 2.7,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: size.width / 1.42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: size.height / 10.1,
                  width: size.width / 1,
                  decoration: const BoxDecoration(
                      color: ColorPellets.trendingcolor2,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Most Invested',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: ColorPellets.whitecolor),
                      ),
                      Hsizes.size10,
                      Text(
                        'Top Choice This Week',
                        style: TextStyle(
                            color: ColorPellets.iconColor, fontSize: 13),
                      )
                    ],
                  ),
                ),
                Container(
                    height: size.height / 3.9,
                    width: size.width / 1,
                    decoration: const BoxDecoration(
                      color: ColorPellets.hlepcontainer,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child:
                        NotificationListener<OverscrollIndicatorNotification>(
                      onNotification:
                          (OverscrollIndicatorNotification overscroll) {
                        overscroll.disallowIndicator();
                        return true;
                      },
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(left: size.width / 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: size.height / 20,
                                        width: size.width / 10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorPellets.iconColor,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                mostStocks[index]['image'],
                                              ),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      Wsize.size20,
                                      Text(
                                        '${index + 1}. ${mostStocks[index]['title']}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: ColorPellets.whitecolor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Divider(
                                thickness: .5,
                                color: Color.fromARGB(255, 74, 75, 79),
                              ),
                            );
                          },
                          itemCount: mostStocks.length),
                    ))
              ],
            ),
          );
        },
        itemCount: mostStocks.length,
        separatorBuilder: (BuildContext context, int index) {
          return Wsize.size10;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smallcase/constants/text.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class StackedContainerWidget extends StatelessWidget {
  const StackedContainerWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          SizedBox(
            width: size.width / 1.4,
          ),
          Positioned(
            left: 8,
            child: Container(
              width: size.width / 1.5,
              height: size.height / 3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorPellets.stackContainer,
              ),
              child: Column(
                children: [
                  Hsizes.size5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height / 43,
                        width: size.width / 16,
                        decoration: const BoxDecoration(
                          color: Color(0xFF7B4EF3),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/image/noun-stock-market-136700-removebg-preview.png',
                          width: size.width / 3,
                          color: ColorPellets.whitecolor,
                        ),
                      ),
                      // Wsize.size5,
                      Text(
                        listcontainer[index]['user'],
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: ColorPellets.whitecolor),
                      ),
                      const Text(
                        'users bought this in last  30 days',
                        style: TextStyle(
                            color: ColorPellets.whitecolor, fontSize: 12),
                      ),
                      Wsize.size20,
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 2,
            bottom: 17,
            child: Container(
              width: size.width / 1.42,
              height: size.height / 3.6,
              padding: const EdgeInsets.only(left: 15, top: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: ColorPellets.stackedcontainer,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: size.height / 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: size.height / 15,
                              width: size.width / 7,
                              decoration: BoxDecoration(
                                color: ColorPellets.whitecolor,
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(listcontainer[index]['image']),
                                ),
                              ),
                            ),
                            Container(
                              height: size.height / 25,
                              width: size.width / 3.4,
                              decoration: BoxDecoration(
                                  color: listcontainer[index]['tit1bgc'],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  )),
                              child: Center(
                                  child: Text(
                                listcontainer[index]['title1'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorPellets.whitecolor,
                                ),
                              )),
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        left: 40,
                        bottom: 5,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: ColorPellets.starBorder,
                          child: Icon(
                            Icons.star_rounded,
                            size: 15,
                            color: ColorPellets.whitecolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    listcontainer[index]['title2'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorPellets.whitecolor,
                    ),
                  ),
                  Hsizes.size10,
                  Text(
                    listcontainer[index]['content'],
                    style: TextStyles.contenttext,
                  ),
                  Hsizes.size10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${listcontainer[index]['cagr']}Y CAGR',
                            style: TextStyles.contenttext,
                          ),
                          Hsizes.size5,
                          Text(
                            listcontainer[index]['percent'],
                            style: const TextStyle(
                                color: ColorPellets.percentagecolor),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Min. Amount',
                            style: TextStyles.contenttext,
                          ),
                          Hsizes.size5,
                          Text(
                            '₹ ${listcontainer[index]['amount']}',
                            style:
                                const TextStyle(color: ColorPellets.whitecolor),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.bookmark_border_rounded,
                          size: 22,
                          color: ColorPellets.iconColor,
                        ),
                      ),
                      Wsize.size5,
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

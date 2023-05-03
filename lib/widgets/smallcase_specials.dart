// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smallcase/constants/text.dart';
import 'package:smallcase/constants/widget.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class SmallcaseSpaciels extends StatelessWidget {
  const SmallcaseSpaciels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2.2,
      width: size.width / 1,
      color: ColorPellets.containercolor,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: -100,
            child: SvgPicture.asset(
              'assets/image/illustrator1.svg',
              height: size.height / 4,
              color: const Color(0xFF1F212E),
            ),
          ),
          Positioned(
            top: -10,
            right: -60,
            child: SvgPicture.asset(
              'assets/image/illistrator.svg',
              color: const Color(0xFF34364D).withOpacity(0.6),
              height: size.height / 5,
            ),
          ),
          Positioned(
            top: 10,
            child: Container(
              height: size.height / 12,
              width: size.width / 2.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage('assets/image/smallcase spacials.png'))),
            ),
          ),
          const Positioned(
            left: 15,
            top: 80,
            child: Text(
              'Top Performing Mangers',
              style: TextStyle(color: ColorPellets.iconColor, fontSize: 14),
            ),
          ),
          Positioned(
            left: 5,
            right: 0.0,
            bottom: 20.0,
            child: SizedBox(
              height: size.height / 3.9,
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: size.width / 1.29,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          height: size.height / 3.9,
                          width: size.width / 1,
                          decoration: BoxDecoration(
                              color: ColorPellets.popularcolor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  widgsts[index],
                                  Container(
                                    height: size.height / 27,
                                    width: size.width / 4.5,
                                    decoration: BoxDecoration(
                                        color: ColorPellets.specialcontainer1
                                            .withOpacity(.8),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                        child: Text(
                                      smallCasespacials[index]['tag'] ?? "",
                                      style: const TextStyle(
                                          color: Color(0XFFABB3FE),
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ],
                              ),
                              Hsizes.size10,
                              Text(
                                smallCasespacials[index]['title'],
                                style: TextStyles.subtitle,
                              ),
                              Hsizes.size10,
                              Text(
                                '${smallCasespacials[index]['no']} smallcases',
                                style: TextStyles.contenttext,
                              ),
                              Hsizes.size20,
                              Text(
                                smallCasespacials[index]['content'],
                                style: TextStyles.wmaincontent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: widgsts.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Wsize.size15;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

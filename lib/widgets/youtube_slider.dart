import 'package:flutter/material.dart';
import 'package:smallcase/constants/text.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class YoutubeSlider extends StatelessWidget {
  const YoutubeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 4.4,
      width: size.width / 1,
      child: ListView.separated(
          padding: const EdgeInsets.all(15),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                width: size.width / 1.42,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(youtubedata[index]['image'] ?? '')),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wsize.size10,
                        SizedBox(
                          width: size.width / 2,
                          child: Text(
                            youtubedata[index]['caption'],
                            style: TextStyles.subtitle,
                          ),
                        ),
                        Container(
                          height: size.height / 30,
                          width: size.width / 6,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/image/youtubeIcon.png'))),
                        )
                      ],
                    ),
                    Hsizes.size10,
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Wsize.size15,
          itemCount: youtubedata.length),
    );
  }
}

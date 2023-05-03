import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class StockContainer extends StatelessWidget {
  const StockContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            height: size.height / 4,
            width: size.width / 1,
            decoration: BoxDecoration(
                color: ColorPellets.thirdcontainer,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hsizes.size2,
                const Text(
                  'Don\'t have a broker\naccount?',
                  style: TextStyles.subtitle,
                ),
                const Text(
                  'Broker account enables you\nto place orders on stock and\nETFs',
                  style: TextStyles.wmaincontent,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1D2731),
                      side: const BorderSide(width: .5, color: Colors.blue),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        5,
                      ))),
                  onPressed: () {},
                  child: const Text(
                    'Open an ccount',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 22,
            child: Container(
              height: size.height / 4.5,
              width: size.width / 3.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/image/stokimage.jpg'))),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.width / 30),
      child: Container(
        margin: EdgeInsets.only(top: size.height / 50),
        height: size.height / 11,
        width: size.width / 1,
        decoration: BoxDecoration(
            color: ColorPellets.hlepcontainer,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(1.3),
              height: size.height / 13,
              width: size.width / 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  stops: [0.011, 0.4, .70],
                  colors: [
                    ColorPellets.gradiantcolor,
                    ColorPellets.gradiantcolor1,
                    ColorPellets.gradiantcolor2
                    // Colors.black
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: ColorPellets.mCircleAvatar,
                child: Image.asset(
                  'assets/image/IMG_20230502_104004.png-removebg-preview.png',
                  height: size.height / 30,
                ),
              ),
            ),
            SizedBox(
              width: size.width / 1.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('What are smallcases ?',
                      style: TextStyles.subtitle),
                  Row(
                    children: const [
                      Text(
                        'UnderStand in 60 seconds.',
                        style: TextStyle(
                            fontSize: 13, color: ColorPellets.whitecolor),
                      ),
                      Wsize.size5,
                      Text(
                        'Get Started',
                        style: TextStyle(
                            letterSpacing: 1.1,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class ConnectWithBrocker extends StatelessWidget {
  const ConnectWithBrocker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(10),
          height: size.height / 4.9,
          width: size.width / 1,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 68, 102, 159),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hsizes.size10,
              const Text(
                'Ready to Start investing?',
                style: TextStyles.subtitle,
              ),
              Hsizes.size10,
              const Text(
                  'Directly connect your existing broker\naccount to login hassle ⚡',
                  style: TextStyles.wmaincontent),
              Hsizes.size10,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPellets.whitecolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      5,
                    ))),
                onPressed: () {},
                child: const Text(
                  'Connect with brocker',
                  style: TextStyle(color: ColorPellets.progressindecator),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 30,
          bottom: 10,
          child: Container(
            height: size.height / 9,
            width: size.width / 4,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/home (2).png'))),
          ),
        )
      ],
    );
  }
}

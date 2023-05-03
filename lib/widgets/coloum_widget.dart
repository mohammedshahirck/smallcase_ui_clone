import 'package:flutter/material.dart';
import 'package:smallcase/helpers/ksizedbox.dart';

import '../helpers/colors.dart';

class ColumnWiget extends StatelessWidget {
  const ColumnWiget({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        Hsizes.size10,
        SizedBox(
          width: 100,
          child: Text(
            title,
            style: const TextStyle(color: ColorPellets.iconColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

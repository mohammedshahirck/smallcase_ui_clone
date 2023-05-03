import 'package:flutter/material.dart';
import 'package:smallcase/constants/text.dart';
import 'package:smallcase/widgets/coloum_widget.dart';

class PickSmallcase extends StatelessWidget {
  const PickSmallcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColumnWiget(
                title: popularcollection1[0]['title'],
                image: popularcollection1[0]['image'],
              ),
              ColumnWiget(
                title: popularcollection1[1]['title'],
                image: popularcollection1[1]['image'],
              ),
              ColumnWiget(
                title: popularcollection1[2]['title'],
                image: popularcollection1[2]['image'],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColumnWiget(
                title: popularcollection2[0]['title'],
                image: popularcollection2[0]['image'],
              ),
              ColumnWiget(
                title: popularcollection2[1]['title'],
                image: popularcollection2[2]['image'],
              ),
              ColumnWiget(
                title: popularcollection2[2]['title'],
                image: popularcollection2[1]['image'],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';

class ExpansionstileWidgets extends StatelessWidget {
  const ExpansionstileWidgets({
    super.key,
    required this.title,
    this.done,
    required this.content,
    required this.buttonString,
  });

  final String title;
  final Widget? done;
  final String content;
  final String buttonString;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        leading: done,
        title: Text(title, style: TextStyles.wmaincontent),
        iconColor: Colors.grey,
        collapsedIconColor: Colors.grey,
        children: [
          SizedBox(
            width: size.width / 2.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyles.contenttext,
                ),
                Hsizes.size10,
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: size.height / 30,
                      child: Text(
                        buttonString,
                        style: const TextStyle(
                            color: ColorPellets.progressindecator,
                            fontSize: 14),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

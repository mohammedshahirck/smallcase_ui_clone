import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/ksizedbox.dart';
import 'package:smallcase/helpers/textstyle.dart';
import 'package:smallcase/widgets/expansion_tile.dart';

class ExpansionsTiles extends StatelessWidget {
  const ExpansionsTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(size.width / 40.0),
      decoration: BoxDecoration(
        border: Border.all(color: ColorPellets.borderclor, width: .5),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.all(0),
          title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Level up your investment journey',
              style: TextStyle(
                  color: ColorPellets.whitecolor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hsizes.size10,
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Check what\'s next on  your wealth creation journey with smallcase',
                  style: TextStyles.wmaincontent,
                ),
              ),
              Hsizes.size10,
              Hsizes.size5,
              LinearPercentIndicator(
                width: size.width / 1.3,
                lineHeight: 15.0,
                percent: 0.5,
                center: Row(
                  children: const [
                    Wsize.size5,
                    Text(
                      "50%",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ColorPellets.whitecolor,
                          fontSize: 12),
                    ),
                  ],
                ),
                progressColor: ColorPellets.progressindecator,
                backgroundColor: ColorPellets.progressindecatorbackgr,
                barRadius: const Radius.circular(5),
              ),
            ],
          ),
          children: [
            const ExpansionstileWidgets(
              title: 'Understood Concept of smallcase',
              done: CircleAvatar(
                backgroundColor: ColorPellets.donecolor,
                radius: 15,
                child: Icon(
                  Icons.done,
                  size: 15,
                  weight: 20,
                ),
              ),
              content:
                  'Still curious about what smallcases are and how an idea is turned into a smallcase? ',
              buttonString: 'Watch again',
            ),
            const ExpansionstileWidgets(
              title: 'viewed a smallcase',
              done: CircleAvatar(
                backgroundColor: ColorPellets.donecolor,
                radius: 15,
                child: Icon(
                  Icons.done,
                  size: 15,
                  weight: 20,
                ),
              ),
              buttonString: 'Explore smallcases',
              content:
                  'Looks like we\'ve got you hooked. Want to explore more smallcases?',
            ),
            const ExpansionstileWidgets(
              title: 'watchlisted a smallcase',
              done: CircleAvatar(
                backgroundColor: ColorPellets.donecolor,
                radius: 15,
                child: Icon(
                  Icons.done,
                  size: 15,
                  weight: 20,
                ),
              ),
              buttonString: 'See watchlist',
              content: 'You are tracking 1 smallcase',
            ),
            ExpansionstileWidgets(
              title: 'Connect your broker account',
              done: Container(
                height: size.height / 22,
                width: size.width / 11,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorPellets.iconColor),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.account_balance,
                  size: 15,
                ),
              ),
              buttonString: 'Login now',
              content:
                  'Connect your broker account to get started. No new account hassles!',
            ),
            ExpansionstileWidgets(
              title: ' Invest Smallcase',
              done: Container(
                height: size.height / 22,
                width: size.width / 11,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorPellets.iconColor),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.shopping_bag_rounded,
                  size: 15,
                ),
              ),
              content:
                  'Checkout your watchlisted smallcases to find your next investment',
              buttonString: 'See watchlist',
            ),
            ExpansionstileWidgets(
              title: 'Start a Sip',
              done: Container(
                height: size.height / 22,
                width: size.width / 11,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorPellets.iconColor),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.coffee_rounded,
                  size: 15,
                ),
              ),
              buttonString: 'Start SIP',
              content:
                  'Systematic investments help better tackle market volatility',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';
import 'package:smallcase/helpers/textstyle.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const String data = 'Mohammed';
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width / 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Hi, $data!', style: TextStyles.title),
          SizedBox(
            width: size.width / 2.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      height: size.height / 25,
                      width: size.width / 4.9,
                      decoration: BoxDecoration(
                        color: ColorPellets.hlepcontainer,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.info,
                            color: ColorPellets.iconColor,
                          ),
                          Text(
                            'Help',
                            style: TextStyle(
                              color: ColorPellets.iconColor,
                            ),
                          )
                        ],
                      )),
                ),
                // Wsize.size10,
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorPellets.avtarColor,
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: ColorPellets.whitecolor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

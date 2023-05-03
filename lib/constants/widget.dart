import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';

final List<Widget> widgsts = [
  Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(
                'assets/image/KiiYF5cG_400x400-removebg-preview.png')),
        borderRadius: BorderRadius.circular(5),
        color: ColorPellets.smallcontainer),
  ),
  Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFF02DCF8),
      ),
      child: const Center(
          child: Text('W',
              style: TextStyle(
                color: ColorPellets.mainText,
                fontSize: 18,
              )))),
  Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFF668BDC),
      ),
      child: const Center(
          child: Text('G',
              style: TextStyle(
                color: ColorPellets.mainText,
                fontSize: 18,
              )))),
  Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFF668BDC),
      ),
      child: const Center(
          child: Text('W',
              style: TextStyle(
                color: ColorPellets.mainText,
                fontSize: 18,
              )))),
  Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xFFD82F44),
      ),
      child: const Center(
          child: Text('N',
              style: TextStyle(
                color: ColorPellets.mainText,
                fontSize: 18,
              )))),
];

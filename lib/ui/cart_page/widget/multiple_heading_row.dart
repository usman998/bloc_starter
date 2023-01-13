



import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:flutter/material.dart';

import '../../../utils/const.dart';

class MultipleHeadingRow extends StatelessWidget {
  const MultipleHeadingRow({
    Key? key,
    required double width,
    required this.firstHeading,
    required this.secondHeading,
    this.weight : FontWeight.w500,
    this.fontSize : 17
  }) : _width = width, super(key: key);

  final double _width;
  final double fontSize;
  final FontWeight weight;
  final String firstHeading;
  final String secondHeading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _width*0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingBar(text: firstHeading,leftPad:0 ,
            fontSize: fontSize,topPad: 0,fontWeight: weight,textColor: ColorConst.kPrimaryColor,bottomPad: 0,),
          HeadingBar(text: secondHeading,leftPad:0 ,
            fontSize: fontSize,topPad: 0,fontWeight: weight,textColor: ColorConst.kSecondaryColor,bottomPad: 0,)
        ],
      ),
    );
  }
}
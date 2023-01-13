


import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

class RoundedHeartButton extends StatelessWidget {
  const RoundedHeartButton({
    Key? key,
    required double height,
    required double width,
  }) : _height = height, _width = width, super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:_height*0.08 ,width: _width*0.15,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          shape: BoxShape.circle
      ),
      alignment: Alignment.center,
      child: const Icon(Icons.favorite,color: ColorConst.kSecondaryColor,size: 35,),
    );
  }
}
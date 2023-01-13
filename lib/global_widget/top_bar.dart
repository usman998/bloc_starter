



import 'package:bloc_starter/routes/routes_cont.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required double height,
    required double width,
    this.firstPage : true,
    this.heading : ""
  }) : _height = height, _width = width, super(key: key);

  final double _height;
  final double _width;
  final String heading;
  final bool firstPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height*0.12,
      width: double.infinity,
      padding: EdgeInsets.only(left: _width*0.05,right: _width*0.05,top: _height*0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:   [
          firstPage?const Icon(Icons.menu_outlined,size: 35,color: ColorConst.kPrimaryColor,):
          GestureDetector(
              onTap:  (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_rounded,size: 35,color: ColorConst.kPrimaryColor,)),
          Text(heading,style: const TextStyle(
            color: ColorConst.kPrimaryColor,fontSize: 18,fontWeight: FontWeight.w600
          ),),
          firstPage?Container(
            height: _height*0.04,
            width: _width*0.08,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: ColorConst.kPrimaryColor
            ),
            alignment: Alignment.center,
            child: const Icon(Icons.person,color: Colors.white,),
          ):
          GestureDetector(
              onTap:  (){
                Navigator.pushNamed(context, RouteName.cartRoute);
              },
              child: const Icon(Icons.shopping_cart_outlined,size: 35,color: ColorConst.kPrimaryColor,)),
        ],
      ),
    );
  }
}
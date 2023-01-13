



import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/routes/routes_cont.dart';
import 'package:bloc_starter/utils/common_code.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

class HorizontalProductBox extends StatelessWidget {
  const HorizontalProductBox({
    Key? key,
    required double width,
    required double height,
    required this.i,
  }) : _width = width, _height = height, super(key: key);

  final double _width;
  final double _height;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: _width*0.05,right: _width*0.05,bottom: 20),
      child: Material(
        elevation: 5,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, RouteName.productRoute,arguments:CommonCode().Products[i] );
          },
          child: Container(
            height: _height*0.12,
            child: Stack(
              children: [
                Positioned(left: 10,top: 10,bottom: 10,
                  child:Container(
                    width:_width*0.2,decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(CommonCode().Products[i].image),
                          fit: BoxFit.cover
                      )
                  ),
                  ),),
                Positioned(top: _height*0.02,left: _width*0.24,
                  child: HeadingBar(text: CommonCode().Products[i].name,leftPad:0 ,
                    fontSize: 20,topPad: 0,fontWeight: FontWeight.w500,textColor: ColorConst.kPrimaryColor,bottomPad: 0,),),
                Positioned(top: _height*0.05,left: _width*0.24,right: _width*0.15,
                  child: HeadingBar(text: CommonCode().Products[i].description,leftPad:0 ,
                    fontSize: 15,topPad: 0,fontWeight: FontWeight.w500,textColor: ColorConst.kLightFontColor,bottomPad: 0,),),
                Positioned(bottom: _height*0.01,left: _width*0.24,
                  child: HeadingBar(text: "\$${CommonCode().Products[i].price}",leftPad:0 ,
                    fontSize: 17,topPad: 0,fontWeight: FontWeight.w500,textColor: ColorConst.kPrimaryColor,bottomPad: 0,),),
                Positioned(bottom:_height*0.01,right: _width*0.05,
                  child: Container(
                    height: _height*0.04,
                    width: _width*0.08,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: ColorConst.kPrimaryColor
                    ),
                    alignment: Alignment.center,
                    child: const Icon(Icons.arrow_forward,color: Colors.white,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
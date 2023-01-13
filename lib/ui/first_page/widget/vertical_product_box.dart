
import 'package:bloc_starter/business_logic/bloc/cart_bloc/cart_action_bloc.dart';
import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/utils/common_code.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerticalProdcutBox extends StatelessWidget {
  const VerticalProdcutBox({
    Key? key,
    required double width,
    required double height,
  }) : _width = width, _height = height, super(key: key);

  final double _width;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:_width*0.04 ,top: 10 ),
      height: _height*0.4,
      // color: Colors.orange,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 5,
                borderRadius:const  BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                child: SizedBox(
                  height: _height*0.35,width: _width*0.5,
                  child: Stack(
                    children: [
                      Positioned(top: 10,left: 8,right: 8,
                        child:Container(
                          height: _height*0.2,decoration: BoxDecoration(
                            borderRadius:const  BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage(CommonCode().Products[index].image),
                                fit: BoxFit.cover
                            )
                        ),
                        ),),
                      Positioned(top: _height*0.22,left: 13,
                        child: HeadingBar(text: CommonCode().Products[index].name,leftPad:0 ,
                          fontSize: 20,topPad: 0,fontWeight: FontWeight.w500,textColor: ColorConst.kPrimaryColor,bottomPad: 0,),),
                      Positioned(top: _height*0.25,left: 13,right: _width*0.05,
                        child: HeadingBar(text: CommonCode().Products[index].description,leftPad:0 ,
                          fontSize: 15,topPad: 0,fontWeight: FontWeight.w500,textColor: ColorConst.kLightFontColor,bottomPad: 0,),),
                      Positioned(bottom: 25,left: _width*0.03,child: HeadingBar(text: "\$ ${CommonCode().Products[index].price}",leftPad:0 ,
                        fontSize: 20,topPad: 0,fontWeight: FontWeight.w500,textColor: ColorConst.kPrimaryColor,bottomPad: 0,), ),
                      Positioned(bottom: 25,right: _width*0.03,child: GestureDetector(
                          onTap: (){
                            BlocProvider.of<CartBloc>(context).add(CartBadgeIncrementEvent(products: CommonCode().Products[index]));
                          },
                          child: const Icon(Icons.add_circle,color: ColorConst.kPrimaryColor,)), )
                    ],
                  ),
                ),
              ),
            );
          }, separatorBuilder: (context,index){
        return const SizedBox(width: 10,);
      }, itemCount: CommonCode().Products.length),
    );
  }
}

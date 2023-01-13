





import 'package:bloc_starter/business_logic/bloc/cart_bloc/cart_action_bloc.dart';
import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/model/product_model.dart';
import 'package:bloc_starter/routes/routes_cont.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeftTopCurvedButton extends StatelessWidget {
  const LeftTopCurvedButton({
    Key? key,
    required double height,
    required double width,
    required this.product
  }) : _height = height, _width = width, super(key: key);

  final double _height;
  final double _width;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height*0.1,
      width: double.infinity,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(right: 0,bottom: 0,top: 0,
            child: GestureDetector(
              onTap: (){
                BlocProvider.of<CartBloc>(context).add(CartBadgeIncrementEvent(products: product));
                // Navigator.pushNamed(context, RouteName.cartRoute);
              },
              child: Container(
                width: _width*0.6,
                decoration:const  BoxDecoration(
                    color: ColorConst.kPrimaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Icon(Icons.add,color: ColorConst.kBackGroundColor,),
                    HeadingBar(text: "Add to Cart",leftPad: 5,textColor: ColorConst.kBackGroundColor,fontSize: 18,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
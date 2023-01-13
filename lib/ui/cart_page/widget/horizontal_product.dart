



import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/model/product_model.dart';
import 'package:bloc_starter/utils/common_code.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

import '../../../global_widget/custom_checkbox.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({
    Key? key,
    required double width,
    required double height,
    required this.product,
  }) : _width = width, _height = height, super(key: key);

  final double _width;
  final double _height;
  final ProductModel product;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: _width*0.05),
      child: Container(
        height: _height*0.11,
        child: Row(
          children: [
            Custom_Checkbox(
              size: 19,
              onChange: (){},
              isChecked: true,
              backgroundColor: Colors.white,
              iconColor:ColorConst.kSecondaryColor,
            ),
            const SizedBox(width: 10,),
            Container(
              width:_width*0.25,decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(product.image),
                    fit: BoxFit.cover
                )
            ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(top: 10,left: 20,
                    child: HeadingBar(text: product.name,leftPad:0 ,
                      fontSize: 17,topPad: 0,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,bottomPad: 0,),
                  ),
                  Positioned(bottom: 10,left: 20,
                    child: HeadingBar(text: "\$${product.price}",leftPad:0 ,
                      fontSize: 17,topPad: 0,fontWeight: FontWeight.w400,textColor: ColorConst.kSecondaryColor,bottomPad: 0,),
                  ),
                  Positioned(bottom: 5,right: 20,
                    child: Container(
                      width: _width*0.2,height: _height*0.04,decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.grey.shade400)
                    ),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.remove,size: 20,),
                          Text("1"),
                          Icon(Icons.add,size: 20,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
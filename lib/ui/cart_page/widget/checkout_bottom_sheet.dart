




import 'package:bloc_starter/global_widget/default_rounded_btn.dart';
import 'package:bloc_starter/ui/cart_page/widget/multiple_heading_row.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({
    Key? key,
    required double height,
    required double width,
  }) : _height = height,_width = width,  super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height*0.35,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
        color: ColorConst.kBackGroundColor,
        boxShadow: [
          BoxShadow(
            color: ColorConst.kPrimaryColor,
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: _height*0.05,),
          MultipleHeadingRow(width: _width, firstHeading: "Selected Items", secondHeading: "\$235.00"),
          const SizedBox(height: 10,),
          MultipleHeadingRow(width: _width, firstHeading: "Shipping Fee", secondHeading: "\$35.00"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width*0.07,vertical: 30),
            child: Divider(color: Colors.grey.shade400,thickness: 2,),
          ),
          MultipleHeadingRow(width: _width, firstHeading: "SubTotal", secondHeading: "\$265.00",fontSize: 22,weight: FontWeight.bold,),
          const SizedBox(height: 15,),
          DefaultRoundedButton(buttonHeight: _height*0.07, buttonWidth: _width*0.9, btnColor: ColorConst.kPrimaryColor, shadowColor: Colors.indigo.shade300,
              onPress: (){}, mainWidget: const Text(
                "CheckOut",style: TextStyle(
                  color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400
              ),
              )),
        ],
      ),
    );
  }
}
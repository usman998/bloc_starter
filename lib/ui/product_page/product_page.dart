



import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/global_widget/top_bar.dart';
import 'package:bloc_starter/model/product_model.dart';
import 'package:bloc_starter/ui/product_page/widget/color_circle.dart';
import 'package:bloc_starter/ui/product_page/widget/left_top_curved_btn.dart';
import 'package:bloc_starter/ui/product_page/widget/rating_text.dart';
import 'package:bloc_starter/ui/product_page/widget/rounded_heart_button.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final ProductModel data;
  ProductPage(this.data);


  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConst.kBackGroundColor,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: _height*0.6,width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,bottom: 30,left: 0,right: 0,
                          child: Container(
                        decoration:  BoxDecoration(
                            borderRadius: const  BorderRadius.only(bottomLeft: Radius.circular(70)),
                            image: DecorationImage(
                          image: NetworkImage(data.image),
                          fit: BoxFit.cover
                        )),
                      )),
                      TopBar(height: _height, width: _width,firstPage: false,heading: "Product",),
                      Positioned(bottom: 0,right: 20,
                        child: RoundedHeartButton(height: _height, width: _width),
                      ),
                    ],
                  ),
                  ),
                  HeadingBar(text: "\$${data.price.toString()}",leftPad:_width*0.05 ,fontSize: 25,topPad: 0,fontWeight: FontWeight.bold,textColor: ColorConst.kSecondaryColor,),
                  RatingText(width: _width,name: data.name,),
                  SizedBox(height: _height*0.02,),
                  HeadingBar(text: "Color Option",leftPad:_width*0.05 ,fontSize: 15,topPad: 0,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,),
                  Padding(
                    padding: EdgeInsets.only(left:_width*0.05 ),
                    child: Row(
                      children:  [
                        ColoredCircle(height: _height, width: _width, boxColor: ColorConst.kSecondaryColor, borderColor: Colors.white),
                        const SizedBox(width: 5,),
                        ColoredCircle(height: _height, width: _width, boxColor: ColorConst.kPrimaryColor, borderColor: ColorConst.kPrimaryColor),
                        const SizedBox(width: 5,),
                        ColoredCircle(height: _height, width: _width, boxColor: Colors.grey, borderColor: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(height: _height*0.02,),
                  HeadingBar(text: "Description",leftPad:_width*0.05 ,fontSize: 20,topPad: 0,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,),
                  SizedBox(height: _height*0.005,),
                  HeadingBar(text:data.description,
                    leftPad:_width*0.05 ,fontSize: 15,topPad: 0,rightPad:_width*0.05,fontWeight: FontWeight.bold,textColor: ColorConst.kLightFontColor,maxlines: 3,),
                ],
              ),
            ),
          ),
          LeftTopCurvedButton(height: _height, width: _width,product: data,)
        ],
      ),
    );
  }
}









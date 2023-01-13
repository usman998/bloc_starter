




import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';

class RatingText extends StatelessWidget {
  const RatingText({
    Key? key,
    required double width,
    required this.name,
  }) : _width = width, super(key: key);

  final double _width;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:_width*0.05 ,right: _width*0.08,top: 10  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingBar(text: name,leftPad:0,fontSize: 17,topPad: 0,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,),
          Container(
            child: Row(
              children: [
                const Icon(Icons.star,color: Colors.amber,size: 20,),
                const Icon(Icons.star,color: Colors.amber,size: 20,),
                const Icon(Icons.star,color: Colors.amber,size: 20,),
                const Icon(Icons.star,color: Colors.amber,size: 20,),
                const Icon(Icons.star_border,color: Colors.amber,size: 20,),
                HeadingBar(text: "4.5",leftPad:0,fontSize: 13,topPad: 0,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
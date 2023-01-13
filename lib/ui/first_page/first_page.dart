


import 'package:bloc_starter/business_logic/bloc/cart_bloc/cart_action_bloc.dart';
import 'package:bloc_starter/global_widget/heading_bar.dart';
import 'package:bloc_starter/global_widget/top_bar.dart';
import 'package:bloc_starter/ui/first_page/widget/horizontal_product_box.dart';
import 'package:bloc_starter/ui/first_page/widget/search_bar.dart';
import 'package:bloc_starter/ui/first_page/widget/vertical_product_box.dart';
import 'package:bloc_starter/utils/common_code.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class FirstPage extends StatefulWidget {

  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  TextEditingController searchController = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConst.kBackGroundColor,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          TopBar(height: _height, width: _width),
          const SizedBox(height: 20,),
          SearchBar(height: _height, width: _width, controller: searchController),
          // BlocProvider(
          //     create: (context) => CartBloc(),
          //     child: SearchBar(height: _height, width: _width, controller: searchController),
          // ),
          const SizedBox(height: 10,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeadingBar(text: "Explore",leftPad:_width*0.05 ,fontSize: 25,topPad: 20,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,),
                  VerticalProdcutBox(width: _width, height: _height),
                  HeadingBar(text: "Best Selling",leftPad:_width*0.05 ,fontSize: 25,topPad: 20,fontWeight: FontWeight.bold,textColor: ColorConst.kPrimaryColor,bottomPad: 20,),
                  Column(children: [
                    for(var i =0;i<CommonCode().Products.length;i++)HorizontalProductBox(width: _width, height: _height, i: i)
                  ],)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}








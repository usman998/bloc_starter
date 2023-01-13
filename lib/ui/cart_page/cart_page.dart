



import 'package:bloc_starter/business_logic/bloc/cart_bloc/cart_action_bloc.dart';
import 'package:bloc_starter/global_widget/top_bar.dart';
import 'package:bloc_starter/ui/cart_page/widget/checkout_bottom_sheet.dart';
import 'package:bloc_starter/ui/cart_page/widget/horizontal_product.dart';
import 'package:bloc_starter/utils/common_code.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class CartPage extends StatelessWidget {

  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorConst.kBackGroundColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                TopBar(height: _height, width: _width,firstPage: false,heading: "Cart",),
                const SizedBox(height: 10,),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    if(state is CartDecrementState){
                      return Expanded(
                          child:SingleChildScrollView(
                            child: Column(
                              children: [
                                for(var i=0;i<state.prodList.length;i++)HorizontalProduct(width: _width, height: _height,product: state.prodList[i])
                              ],
                            ),
                          )
                      );
                    } else if(state is CartIncrementState){
                      return Expanded(
                          child:SingleChildScrollView(
                            child: Column(
                              children: [
                                for(var i=0;i<state.prodList.length;i++)HorizontalProduct(width: _width, height: _height,product: state.prodList[i],)
                              ],
                            ),
                          )
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                ),

              ],
            ),
          ),
          CheckoutBottomSheet(height: _height,width: _width,)
        ],
      ),
    );
  }
}







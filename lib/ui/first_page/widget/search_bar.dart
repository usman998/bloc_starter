import 'package:bloc_starter/business_logic/bloc/cart_bloc/cart_action_bloc.dart';
import 'package:bloc_starter/routes/routes_cont.dart';
import 'package:bloc_starter/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required double height,
    required double width,
    required this.controller,
  })
      : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height * 0.06,
      width: double.infinity,
      // color: Colors.green,
      padding: EdgeInsets.only(left: _width * 0.05, right: _width * 0.05,),
      child: Row(
        children: [
          Expanded(
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: TextFormField(
                    controller: controller,
                    obscureText: true,
                    autofocus: false,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.search, color: ColorConst.kPrimaryColor,
                        size: 40,),
                      hintText: 'Search',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(
                          0.0, 10.0, 20.0, 10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
          ),
          const SizedBox(width: 10,),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.cartRoute);
              },
              child: Stack(
                children: [
                  const Icon(Icons.shopping_cart_outlined, size: 35,
                    color: ColorConst.kPrimaryColor,),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      if(state is CartDecrementState){
                        return Positioned(
                          right: 5, top: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConst.kPrimaryColor
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Text(state.prodList.length.toString(),
                              style: const TextStyle(
                                color: ColorConst.kBackGroundColor),),
                          ),
                        );
                      } else if(state is CartIncrementState){
                        return Positioned(
                          right: 5, top: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConst.kPrimaryColor
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Text(state.prodList.length.toString(),
                              style: const TextStyle(
                                color: ColorConst.kBackGroundColor),),
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
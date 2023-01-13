part of 'cart_action_bloc.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartIncrementState extends CartState {
  List<ProductModel> prodList;
  CartIncrementState({required this.prodList});
}

class CartDecrementState extends CartState {
  List<ProductModel> prodList;
  CartDecrementState({required this.prodList});
}

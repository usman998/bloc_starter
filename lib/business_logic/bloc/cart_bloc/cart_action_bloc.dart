
import 'package:bloc_starter/model/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'cart_action_event.dart';
part 'cart_action_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {

    on<CartBadgeIncrementEvent>((event, emit) {
      _prodList.add(event.products);
      emit(CartIncrementState(prodList: _prodList));
    });

    on<CartBadgeDecrementEvent>((event, emit) {
      _prodList.remove(event.products);
      emit(CartDecrementState(prodList: _prodList));
    });
  }

  final List<ProductModel> _prodList =[];

  // void addProductToCart (CartBadgeIncrementEvent incre) {
  //
  //   _prodList.add(incre.products);
  //   print(_prodList.length.toString());
  // }

  // void removeProductToCart (CartBadgeDecrementEvent decret) {
  //
  //   _prodList.remove(decret.products);
  //   print(_prodList.length.toString());
  //
  // }

}

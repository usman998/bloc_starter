part of 'cart_action_bloc.dart';

abstract class CartEvent {}

class CartBadgeIncrementEvent extends CartEvent {
  final ProductModel products;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartBadgeIncrementEvent &&
          runtimeType == other.runtimeType &&
          products == other.products;

  @override
  int get hashCode => products.hashCode;

  CartBadgeIncrementEvent({required this.products});
}

class CartBadgeDecrementEvent extends CartEvent {
  final ProductModel products;
  CartBadgeDecrementEvent({required this.products});
}

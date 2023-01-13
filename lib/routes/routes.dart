

import 'package:bloc_starter/model/product_model.dart';
import 'package:bloc_starter/routes/routes_cont.dart';
import 'package:bloc_starter/ui/cart_page/cart_page.dart';
import 'package:bloc_starter/ui/product_page/product_page.dart';
import 'package:flutter/material.dart';

import '../ui/first_page/first_page.dart';

class GeneratedRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeRoute:
        return MaterialPageRoute(builder: (_) => FirstPage());
      case RouteName.productRoute:
        var data = settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (_) => ProductPage(data));
      case RouteName.cartRoute:
        return MaterialPageRoute(builder: (_) => CartPage());
      default:
        return null;
    }
  }
}
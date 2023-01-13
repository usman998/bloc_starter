import 'package:bloc_starter/business_logic/bloc/cart_bloc/cart_action_bloc.dart';
import 'package:bloc_starter/routes/routes.dart';
import 'package:bloc_starter/routes/routes_cont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: GeneratedRouter.generateRoute,
        initialRoute: RouteName.homeRoute,
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/Models/cart.dart';
import 'package:sneakershop/pages/intro_page.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}

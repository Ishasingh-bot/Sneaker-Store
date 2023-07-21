import 'package:flutter/material.dart';
import 'package:sneakershop/Models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '500',
        imagePath: 'lib/images/sneaker1.jpg',
        description: 'Latest design using forward Technology'),
    Shoe(
        name: 'Air jordans',
        price: '700',
        imagePath: 'lib/images/sneaker3.jpg',
        description: 'you have got the hops in the shoes '),
    Shoe(
        name: 'Nike Air Max Plus',
        price: '257',
        imagePath: 'A secure mid-foot strap is suited for scoring binges ',
        description: ''),
    Shoe(
        name: 'ACG Mountain',
        price: '284',
        imagePath: 'lib/images/sneaker4.jpg',
        description: 'Latest design using forward Technology')
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addIteamToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

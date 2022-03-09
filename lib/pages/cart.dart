import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List banners = [
    'https://static.lifeipt.top/banner1.jpg',
    'https://static.lifeipt.top/banner2.jpg',
    'https://static.lifeipt.top/banner3.jpg',
  ];
  // final prefs = SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('购物车')),
        body: Center());

  }
}
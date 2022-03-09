import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  List banners = [
    'https://static.lifeipt.top/banner1.jpg',
    'https://static.lifeipt.top/banner2.jpg',
    'https://static.lifeipt.top/banner3.jpg',
  ];
  // final prefs = SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('我的')),
        body: Center());

  }
}
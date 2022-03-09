import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List banners = [
    'https://static.lifeipt.top/banner1.jpg',
    'https://static.lifeipt.top/banner2.jpg',
    'https://static.lifeipt.top/banner3.jpg',
  ];
  // final prefs = SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('首页')),
        body: Center(
          // child: ListView(
          //   children: [
          //     SizedBox(
          //         height: 160,
          //         child: Swiper(
          //           itemBuilder: (BuildContext context, int index) {
          //             return Image.network(
          //               banners[index],
          //               fit: BoxFit.fill,
          //             );
          //           },
          //           // indicatorLayout: PageIndicatorLayout.COLOR,
          //           scrollDirection: Axis.horizontal,
          //           autoplay: true,
          //           itemCount: banners.length,
          //         )),
          //     const SizedBox(
          //         height: 100,
          //         child: ListTile(
          //           title: Text("首页1"),
          //         )),
          //     GestureDetector(
          //       child: Container(
          //           width: 72,
          //           height: 72,
          //           alignment: Alignment.center,
          //           child: const Text(
          //             '手势测试',
          //             style: TextStyle(color: Colors.white, fontSize: 20),
          //           ),
          //           decoration: BoxDecoration(
          //               color: Colors.blueAccent,
          //               borderRadius: BorderRadius.circular(36))),
          //
          //     )
          //   ],
          // ),
        ));
  }
}
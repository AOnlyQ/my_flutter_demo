import 'package:flutter/material.dart';
import 'package:untitled/pages/cart.dart';
import 'package:untitled/pages/home.dart';
import 'package:untitled/pages/mine.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '稳健医疗 Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const TabNavigator(),
    );
  }
}


class TabNavigator extends StatefulWidget {
  const TabNavigator({Key? key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const [HomePage(), CartPage(), MinePage()],
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          // 点击事件
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed, //label固定显示
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromARGB(255, 158, 158, 156),
              ),
              activeIcon: Icon(
                Icons.home_filled,
                color: Colors.blue,
              ),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 158, 158, 156),
              ),
              activeIcon: Icon(
                Icons.search_off,
                color: Colors.blue,
              ),
              label: '搜索',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.travel_explore_sharp,
                color: Color.fromARGB(255, 158, 158, 156),
              ),
              activeIcon: Icon(
                Icons.travel_explore_sharp,
                color: Colors.blue,
              ),
              label: '旅游',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 158, 158, 156),
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              label: '我的',
            ),
          ]),
    );
  }
}





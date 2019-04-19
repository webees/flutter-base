import 'package:flutter/material.dart';

import '../home/index.dart';
import '../market/index.dart';
import '../exchange/index.dart';
import '../news/index.dart';
import '../my/index.dart';

class Bar extends StatefulWidget {
  const Bar() : super();
  @override
  State<StatefulWidget> createState() => BarState();
}

// SingleTickerProviderStateMixin is used for animation
class BarState extends State<Bar> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  var _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onTap(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> _barItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), title: Text('钱包')),
    BottomNavigationBarItem(icon: Icon(Icons.equalizer), title: Text('行情')),
    BottomNavigationBarItem(icon: Icon(Icons.public), title: Text('交易')),
    BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text('社区')),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
  ];

  static List<Widget> _children = <Widget>[HomeView(), MarketView(), ExchangeView(), NewsView(), MyView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _children,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _barItems,
        currentIndex: _currentIndex, // 当前所高亮的按钮index
        onTap: _onTap, // 点击里面的按钮的回调函数，参数为当前点击的按钮 index
        type: BottomNavigationBarType.fixed, // BottomNavigationBarType 中定义的类型，有 fixed 和 shifting 两种类型
        fixedColor: Colors.deepPurple, // 如果 type 类型为 fixed，则通过 fixedColor 设置选中 item 的颜色
      ),
    );
  }
}

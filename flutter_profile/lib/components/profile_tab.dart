import 'package:flutter/material.dart';

// StateFul 상태가 있는 위젯 => 상태에 따라 위젯이 변경
class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  _ProflieTabState createState() => _ProflieTabState();
}

class _ProflieTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  // profileTab 그림이 그려질 때 단 한번 실행됨
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _bulidTabBar(),
        _bulidTabBarView(),
      ],
    );
  }

  Widget _bulidTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
      ],
    );
  }

  Widget _bulidTabBarView() {
    return SizedBox(
      height: 200,
      child: TabBarView(
        controller: _tabController,
        children: [
          Text("11111"),
          Text("22222"),
        ],
      ),
    );
  }
}

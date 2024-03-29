import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>  with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar kullanım"),
        bottom: buildTabBar(),
      ),
      bottomNavigationBar: buildTabBarBottom(),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            color: Colors.teal,
            child: Center(child: Text("Sayfa 1")),
          ),
          Container(
            color: Colors.teal,
            child: Center(child: Text("Sayfa 2")),
          ),
          Container(
            color: Colors.teal,
            child: Center(child: Text("Sayfa 3")),
          ),
        ],
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      controller: tabController,
      tabs: [
        Tab(icon: Icon(Icons.keyboard),text: "Tab 1",),
        Tab(icon: Icon(Icons.lock),text: "Tab 2",),
        Tab(icon: Icon(Icons.add_box), text: "Tab 3",),
      ],
    );
  }

  Widget buildTabBarBottom() {
    return Container(
      color: Colors.indigoAccent,
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(icon: Icon(Icons.keyboard),text: "Tab 1",),
          Tab(icon: Icon(Icons.lock),text: "Tab 2",),
          Tab(icon: Icon(Icons.add_box), text: "Tab 3",),
        ],
      ),
    );
  }
}

import 'package:demo_flutter_project/components/tab_item.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      selectedItemColor: greyText,
      selectedLabelStyle: const TextStyle(
          color: greyText,
          fontFamily: 'Roboto',
          fontSize: 10.0,
          fontWeight: FontWeight.w400),
      unselectedLabelStyle: const TextStyle(
          color: greyText,
          fontFamily: 'Roboto',
          fontSize: 10.0,
          fontWeight: FontWeight.w400),
      items: [
        _buildItem(TabItem.catalog),
        _buildItem(TabItem.autoOrder),
        _buildItem(TabItem.cart),
        _buildItem(TabItem.more),
      ],
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    String iconPath = tabIcon[tabItem]!;
    return BottomNavigationBarItem(
      icon: Image(image: AssetImage(iconPath), height: 22),
      label: tabName[tabItem],
    );
  }

  Widget _buildBottomItem(TabItem tabItem) {
    String iconPath = tabIcon[tabItem]!;
    return Column(children: [
      Positioned.fill(
        child: Align(
          alignment: Alignment.center,
          child: Image(image: AssetImage(iconPath)),
        ),
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(tabItem.name),
        ),
      )
    ]);
  }
}

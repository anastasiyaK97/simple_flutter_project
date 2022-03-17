import 'package:demo_flutter_project/components/strings.dart';

enum TabItem { catalog, autoOrder, cart, more }

const Map<TabItem, String> tabName = {
  TabItem.catalog: Strings.bottomBarCatalogTitle,
  TabItem.autoOrder: Strings.bottomBarAutoOrderTitle,
  TabItem.cart: Strings.bottomBarCartTitle,
  TabItem.more: Strings.bottomBarMoreTitle,
};

const Map<TabItem, String> tabIcon = {
  TabItem.catalog: 'assets/images/icon_catalog.png',
  TabItem.autoOrder: 'assets/images/icon_autoorder.png',
  TabItem.cart: 'assets/images/icon_cart.png',
  TabItem.more: 'assets/images/icon_more.png',
};
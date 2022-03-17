import 'dart:async';

import '../../models/category.dart';

Future getCategories() async {
  try {
    var response =
        await fetchCategories();
    return response;
  } catch (e) {
    print(e);
  }
}

List<Category> fetchCategories() {
  List<Category> categories = [
    Category(
        id: 0,
        name: "Сухой корм для кошек",
        imageUrl: "https://cdn-icons-png.flaticon.com/512/103/103725.png",
        color: "#FF934D"
    ),
    Category(
        id: 1,
        name: "Игрушки для кошек",
        imageUrl: "",
        color: "#A889B8"
    ),
    Category(
        id: 2,
        name: "Игрушки для собак",
        imageUrl: "https://cdn-icons-png.flaticon.com/512/103/103725.png",
        color: "#A889B8"
    ),
    Category(
        id: 3,
        name: "Сухой корм для собак",
        imageUrl: "https://cdn-icons-png.flaticon.com/512/103/103725.png",
        color: "#6299CB"
    )
  ];
  return categories;
}

import 'dart:async';

import '../../models/profileSection.dart';

Future getSections() async {
  try {
    var response =
        await fetchSections();
    return response;
  } catch (e) {
    print(e);
  }
}

List<ProfileSection> fetchSections() {
  List<ProfileSection> sectionList = [
    ProfileSection(
        name: "Мои заказы",
        imageUrl: "https://cdn-icons-png.flaticon.com/512/103/103725.png",
        color: "#35B395"),
    ProfileSection(
        name: "Мои данные",
        color: "#66B8D7",
        imageUrl: "https://www.freeiconspng.com/thumbs/computer-user-icon/computer-user-icon-28.png")
  ];
  return sectionList;
}

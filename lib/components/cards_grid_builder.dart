import 'package:demo_flutter_project/components/widgets.dart';
import 'package:flutter/material.dart';

import '../screens/profile_section/prosile_section_screen.dart';
import '../utils/color_utils.dart';
import 'colors.dart';

GridView buildCardsGridView(BuildContext context, List<dynamic> cards) {
  const double height = 103;
  return GridView.builder(
    itemCount: cards.length,
    padding: const EdgeInsets.only(top: 0),
    reverse: false,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisExtent: height,
    ),
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
          onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileSectionScreen(
                              section: cards[index],
                            ))),
              },
          child: gridCardItem(context, cards[index]));
    },
  );
}

Card gridCardItem(BuildContext context, item) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: HexColor.fromHex(
          hexString: item.color, defaultColor: defaultQuickCardColor),
      child: Stack(children: [
        Padding(
            padding: const EdgeInsets.only(left: 10, top: 8),
            child: MontserratSemiBoldText(text: item.name, size: 13, color: white),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.network(item.imageUrl, fit: BoxFit.contain,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
              return const Text('');
            }),
          ),
        ),
      ]));
}

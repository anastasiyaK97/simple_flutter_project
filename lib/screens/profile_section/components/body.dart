import 'package:demo_flutter_project/components/colors.dart';
import 'package:flutter/material.dart';

import '../../../components/cards_grid_builder.dart';
import '../../../components/strings.dart';
import '../../../components/widgets.dart';

class SectionBody extends StatelessWidget {
  const SectionBody({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 16),
          child: MontserratBoldText(
              text: Strings.ordersEmptyTitle, size: 20, color: blackText)),
      Flexible(
        child: buildCardsGridView(context, categories),
        flex: 1
      ),
      emptyButton(Strings.ordersEmptyButtonTitle),
    ]);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../components/cards_grid_builder.dart';

class SectionBody extends StatelessWidget {
  const SectionBody({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Flexible(child: buildCardsGridView(context, categories))
    );
  }
}


import 'package:flutter/cupertino.dart';

import '../../../components/cards_grid_builder.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
    required this.sections
  }) : super(key: key);

  final List sections;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flexible(child: buildCardsGridView(context, sections))
    );
  }
}

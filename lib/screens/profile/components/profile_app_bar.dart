import 'package:flutter/material.dart';

import '../../../components/app_bar_action_icons.dart';
import '../../../components/colors.dart';
import '../../../components/widgets.dart';

AppBar profileAppBar(context, String mainTitle) {
  return AppBar(
    backgroundColor: topBarBackground,
    elevation: 0,
    flexibleSpace: appBarWithActions(
      child: RobotoBoldText(text: mainTitle, size: 16, color: blackText),
    ),
    centerTitle: false,
  );
}

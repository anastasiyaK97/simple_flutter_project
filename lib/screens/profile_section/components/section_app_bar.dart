import 'package:demo_flutter_project/components/app_bar_action_icons.dart';
import 'package:flutter/material.dart';

import '../../../components/colors.dart';
import '../../../components/strings.dart';
import '../../../components/widgets.dart';

AppBar sectionAppBar(context, String mainTitle) {
  return AppBar(
    toolbarHeight: 85,
    elevation: 0,
    backgroundColor: topBarBackground,
    automaticallyImplyLeading: false,
    flexibleSpace: appBarWithActions(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 17),
                child: InkWell(
                  onTap: () => {Navigator.pop(context)},
                  child: const PreviousTitle(title: Strings.topBarPersonalAccountTitle),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 8),
                child: RobotoBoldText(
                    text: mainTitle, size: 24, color: blackText))
          ],
        )
    ),
  );
}

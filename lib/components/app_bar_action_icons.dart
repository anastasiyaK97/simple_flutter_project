import 'package:flutter/material.dart';

List<Widget> appBarActionsIcon() {
  return [
    Container(
        padding: const EdgeInsets.only(top: 18, right: 16),
        child: InkWell(
          onTap: () {},
          child:
          const Image(image: AssetImage('assets/images/phoneAccount.png'), alignment: Alignment.topRight),
        )),
    Container(
        padding: const EdgeInsets.only(top: 18, right: 16),
        child: InkWell(
          onTap: () {},
          child:
          const Image(image: AssetImage('assets/images/personalAccount.png'), alignment: Alignment.topCenter),
        )),
  ];
}

Widget appBarWithActions({required Widget child}) {
  return Row(
      children: [
        Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: child)),
        Align(alignment: Alignment.topRight,child: Row(children: appBarActionsIcon())),
      ]
  );
}

import 'package:flutter/material.dart';

import 'colors.dart';

class PreviousTitle extends StatelessWidget {
  const PreviousTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
        padding: EdgeInsets.only(right: 8),
        child: Image(
            image: AssetImage("assets/images/arrowBack.png"),
        )),
        MontserratSemiBoldText(text: title, size: 13, color: blueLinkText),
      ],
    );
  }
}

class MontserratSemiBoldText extends StatelessWidget {
  const MontserratSemiBoldText({
    Key? key,
    required this.text,
    required this.size,
    this.color
  }) : super(key: key);

  final String text;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: size,
            fontWeight: FontWeight.w600,
            color: color
        )
    );
  }
}

class RobotoBoldText extends StatelessWidget {
  const RobotoBoldText({
    Key? key,
    required this.text,
    required this.size,
    this.color
  }) : super(key: key);

  final String text;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: size,
            fontWeight: FontWeight.w700,
            color: color
        )
    );
  }
}

PreferredSize appBarContainer({
  required double size,
  Widget? child
}) {
    return PreferredSize(
        preferredSize: Size(double.infinity, size),
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            child: child
    ));

}


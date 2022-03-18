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

PreferredSize appBarContainer(
    {required double size, Widget? child, required BuildContext context}) {
  var topPadding = MediaQuery.of(context).padding.top;
  return PreferredSize(
      preferredSize: Size(double.infinity, size),
      child: Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              child: child)));
}

class MontserratSemiBoldText extends StatelessWidget {
  const MontserratSemiBoldText(
      {Key? key, required this.text, required this.size, this.color})
      : super(key: key);

  final String text;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: size,
            fontWeight: FontWeight.w600,
            color: color));
  }
}

class RobotoBoldText extends StatelessWidget {
  const RobotoBoldText(
      {Key? key, required this.text, required this.size, this.color})
      : super(key: key);

  final String text;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: size,
            fontWeight: FontWeight.w700,
            color: color));
  }
}

class MontserratBoldText extends StatelessWidget {
  const MontserratBoldText(
      {Key? key, required this.text, required this.size, this.color})
      : super(key: key);

  final String text;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: size,
            fontWeight: FontWeight.w700,
            color: color));
  }
}

Container emptyButton(String text) {

  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15), primary: white, elevation: 0);

  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: grey),
      borderRadius: BorderRadius.circular(8),
    ),
    child: ElevatedButton(
        style: style,
        onPressed: () => {},
        child: Container(
            padding: const EdgeInsets.only(top: 10, bottom: 11),
            child: RobotoBoldText(text: text, size: 15, color: blackText))),
  );
}

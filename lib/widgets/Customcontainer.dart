import 'package:flutter/material.dart';

Widget roundContainer(
    {
    //@required BuildContext context,
    @required double width,
    @required double height,
    @required double allradius,
    @required double rradius,
    @required Widget child,
    @required double hMargin,
    @required double vMargin}) {
  return Container(
      padding: EdgeInsets.all(10),
      width: width,
      margin: EdgeInsets.symmetric(horizontal: hMargin, vertical: vMargin),
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(allradius),
            bottomRight: Radius.circular(allradius),
            topLeft: Radius.circular(allradius),
            topRight: Radius.circular(rradius)),
      ),
      child: child);
}

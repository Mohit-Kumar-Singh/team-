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

final Color o = Color.fromRGBO(255, 181, 101, 1);
final Color b = Color.fromRGBO(31, 16, 22, 1);

Widget button(Widget child) {
  return Container(
      width: double.infinity,
      decoration:
          BoxDecoration(color: o, borderRadius: BorderRadius.circular(40)),
      child: child);
}

Widget circleAvatar({@required String image, @required double radius}) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2,
        )),
    child: CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('$image'),
    ),
  );
}

Widget textfield(String text) {
  return TextField(
    decoration: InputDecoration(
      labelText: text,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        borderSide: BorderSide(color: b, width: 2),
      ),
    ),
  );
}

Widget customText(
  text,
) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.chevron_right,
        color: Colors.white,
        size: 15,
      ),
      SizedBox(
        width: 3,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ],
  );
}

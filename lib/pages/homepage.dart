import 'package:flutter/material.dart';
import 'package:team/widgets/Customcontainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * .18,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              roundContainer(
                  width: 200,
                  height: 80,
                  allradius: 20,
                  rradius: 50,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 20,
                  rradius: 50,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 20,
                  rradius: 50,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
            ],
          ),
        ),
        Container(
          height: height * .6,
          child: ListView(
            children: [
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
              roundContainer(
                  width: 200,
                  height: 100,
                  allradius: 10,
                  rradius: 20,
                  child: Text('data'),
                  hMargin: 9,
                  vMargin: 9),
            ],
          ),
        )
      ],
    );
  }
}

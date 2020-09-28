import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pages/homepage.dart';
import 'pages/search.dart';
import 'pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Conatus(),
      debugShowCheckedModeBanner: false,
    ));

class Conatus extends StatefulWidget {
  @override
  _ConatusState createState() => _ConatusState();
}

class _ConatusState extends State<Conatus> {
  int _page = 0;
  Widget showpage = HomePage();
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    if (_page == 0) {
      showpage = HomePage();
    }
    if (_page == 1) {
      showpage = SearchPage();
    }
    if (_page == 2) {
      showpage = ProfilePage();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/cRound.png'),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Conatus',
                style: GoogleFonts.lato(color: Colors.black),
              ),
            ],
          ),
          elevation: 0,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(Icons.search, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //   colors: [Colors.blue, Colors.blue.withOpacity(0.6)],
          //   // begin: Alignment.topLeft,
          //   //end: Alignment.bottomLeft
          // )),
          padding: const EdgeInsets.only(bottom: 10),
          child: showpage,
        ),
      ),
    );
  }
}

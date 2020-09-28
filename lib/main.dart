import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/search.dart';
import 'package:team/pages/search.dart';
import 'pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() => runApp(MaterialApp(
      home: Conatus(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color.fromRGBO(31, 16, 22, 1),
          primarySwatch: Colors.amber),
    ));

enum _SelectedTab { home, search, profile }

class Conatus extends StatefulWidget {
  @override
  _ConatusState createState() => _ConatusState();
}

class _ConatusState extends State<Conatus> {
  var _selectedTab = _SelectedTab.home;
  Widget showpage = HomePage();

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedTab == _SelectedTab.values[0]) {
      showpage = HomePage();
    }
    if (_selectedTab == _SelectedTab.values[1]) {
      showpage = Search();
    }
    if (_selectedTab == _SelectedTab.values[2]) {
      showpage = ProfilePage();
    }
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('IMAGES/conatusDark.jpg'),
                radius: 18,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Conatus',
                style: GoogleFonts.lato(),
              ),
            ],
          ),
          elevation: 0,
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          unselectedItemColor: Theme.of(context).primaryColor,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Theme.of(context).primaryColor,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Theme.of(context).primaryColor,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
        body: Container(
          child: showpage,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amber, Colors.amber.withOpacity(.4)])),
        ),
      ),
    );
  }
}

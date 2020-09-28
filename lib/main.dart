import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'pages/homepage.dart';
import 'pages/search.dart';
import 'pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() => runApp(MaterialApp(
      home: Conatus(),
      debugShowCheckedModeBanner: false,
    ));

// class Conatus extends StatefulWidget {
//   @override
//   _ConatusState createState() => _ConatusState();
// }

// class _ConatusState extends State<Conatus> {
//   int _page = 0;
//   Widget showpage = HomePage();
//   GlobalKey _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;

//     double width = MediaQuery.of(context).size.width;

//     if (_page == 0) {
//       showpage = HomePage();
//     }
//     if (_page == 1) {
//       showpage = SearchPage();
//     }
//     if (_page == 2) {
//       showpage = ProfilePage();
//     }

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.cyan,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Row(
//             children: [
//               CircleAvatar(
//                 backgroundImage: AssetImage('images/cRound.png'),
//               ),
//               SizedBox(
//                 width: 7,
//               ),
//               Text(
//                 'Conatus',
//                 style: GoogleFonts.lato(color: Colors.black),
//               ),
//             ],
//           ),
//           elevation: 0,
//         ),
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 0,
//           height: 50.0,
//           items: <Widget>[
//             Icon(
//               Icons.home,
//               size: 30,
//             ),
//             Icon(Icons.search, size: 30),
//             Icon(Icons.person, size: 30),
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.transparent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//         ),
//         body: Container(
//           // decoration: BoxDecoration(
//           //     gradient: LinearGradient(
//           //   colors: [Colors.blue, Colors.blue.withOpacity(0.6)],
//           //   // begin: Alignment.topLeft,
//           //   //end: Alignment.bottomLeft
//           // )),
//           padding: const EdgeInsets.only(bottom: 10),
//           child: showpage,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// void main() {
//   runApp(MyApp());
// }

// enum _SelectedTab { home,  search, profile }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var _selectedTab = _SelectedTab.home;
//   Widget showpage = HomePage();

//   void _handleIndexChanged(int i) {
//     setState(() {
//       _selectedTab = _SelectedTab.values[i];
//       // print(_SelectedTab)
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_selectedTab == _SelectedTab.values[0]) {
//       showpage = HomePage();
//     }
//     if (_selectedTab == _SelectedTab.values[1]) {
//       showpage = SearchPage();
//     }
//     if (_selectedTab == _SelectedTab.values[2]) {
//       showpage = ProfilePage();
//     }
//     return MaterialApp(
//       title: 'salomon_bottom_bar',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("salomon_bottom_bar"),
//         ),
//         bottomNavigationBar: SalomonBottomBar(
//           currentIndex: _SelectedTab.values.indexOf(_selectedTab),
//           onTap: _handleIndexChanged,
//           items: [
//             /// Home
//             SalomonBottomBarItem(
//               icon: Icon(Icons.home),
//               title: Text("Home"),
//               selectedColor: Colors.purple,
//             ),

//             /// Search
//             SalomonBottomBarItem(
//               icon: Icon(Icons.search),
//               title: Text("Search"),
//               selectedColor: Colors.orange,
//             ),

//             /// Profile
//             SalomonBottomBarItem(
//               icon: Icon(Icons.person),
//               title: Text("Profile"),
//               selectedColor: Colors.teal,
//             ),
//           ],
//         ),
//         body: showpage,
//       ),
//     );
//   }
// }

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
      // print(_SelectedTab)
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_selectedTab == _SelectedTab.values[0]) {
      showpage = HomePage();
    }
    if (_selectedTab == _SelectedTab.values[1]) {
      showpage = SearchPage();
    }
    if (_selectedTab == _SelectedTab.values[2]) {
      showpage = ProfilePage();
    }
    return Scaffold(
      //  backgroundColor: Colors.cyan,
      appBar: AppBar(
        // backgroundColor: Colors.white,
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
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        // unselectedItemColor: Colors.white,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: showpage,
    );
  }
}

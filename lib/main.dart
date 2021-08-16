import 'package:flutter/material.dart';
import 'package:project2/about.dart';
import 'package:project2/menu.dart';
import 'package:project2/profile.dart';
import 'package:project2/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      title: "Project2",
      home: Bottom_Navigation(),
    );
  }
}

// ignore: camel_case_types
class Bottom_Navigation extends StatefulWidget {
  const Bottom_Navigation({Key? key}) : super(key: key);

  @override
  _Bottom_NavigationState createState() => _Bottom_NavigationState();
}

// ignore: camel_case_types
class _Bottom_NavigationState extends State<Bottom_Navigation> {
  PageController pageController = PageController();
  int currtab = 0;
  var alltabs = [profile(), setting(), menu(), about()];
  // PageStorageBucket _bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: alltabs,
        onPageChanged: (newindex) {
          setState(() {
            currtab = newindex;
          });
        },
      ),
      // body: PageStorage(
      //   bucket: _bucket,
      //   child: alltabs[currtab],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        onTap: (newindex) {
          setState(() {
            currtab = newindex;
            pageController.animateToPage(newindex,
                duration: Duration(microseconds: 500),
                curve: Curves.easeInSine);
          });
        },
        // elevation: 0.0,
        backgroundColor: Colors.white38,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'About',
          ),
        ],
        currentIndex: currtab,
        selectedItemColor: Colors.cyan,
      ),
    );
  }
}

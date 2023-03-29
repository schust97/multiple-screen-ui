import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiprojects/designone/instahome.dart';
import 'package:uiprojects/designone/myprofile.dart';
import 'package:uiprojects/designone/reels.dart';
import 'package:uiprojects/designone/store.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int myIndex = 0;
  List instapages = [
    InstaHome(),
    Reels(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          iconSize: 24,
          currentIndex: myIndex,
          onTap: (value) {
            setState(() {
              myIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                backgroundColor: Colors.black,
                label: "reels"),
            BottomNavigationBarItem(
              
              icon: Icon(Icons.person, color: Colors.black),
              backgroundColor: Colors.black,
              label: "Profil",
            )
          ]),
      body: instapages[myIndex],
    );
  }
}

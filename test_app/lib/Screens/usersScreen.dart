import 'package:flutter/material.dart';

import 'package:test_app/Model/User.dart';
import 'package:test_app/Screens/userDetails.dart';
import 'package:test_app/Service/userService.dart';

import '../StartPage.dart';
import 'Contacts.dart';
import 'Settings.dart';

class userScreen extends StatefulWidget {
  const userScreen({key}) : super(key: key);

  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  int currentIndex =0;
List<Widget> pages =[
  StartPage(),
  ContactsPage(),
  SettingsPage(),

];
  @override
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {

    return Scaffold(

        bottomNavigationBar: BottomNavigationBar
          (
            currentIndex: currentIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Contacts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
        ),

        body: pages[currentIndex]





    );
  }
}

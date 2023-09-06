// ignore_for_file: unnecessary_null_comparison, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tez_health_care/BottomBar/Chat/chat.dart';
import 'package:tez_health_care/BottomBar/Home/home.dart';
import 'package:tez_health_care/BottomBar/Profile/profile.dart';
import 'package:tez_health_care/BottomBar/Schedule/schedule.dart';
import 'package:tez_health_care/Utils/helper_class.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // User? userId = FirebaseAuth.instance.currentUser;

  int currentIndex = 0;

  var pages = [
    const HomePage(),
    const SchedulePage(),
    const ChatPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      // drawer: const MyDrawar(),
      body: Container(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
              ),
              label: 'Schedule'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
              ),
              label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: currentIndex,
        backgroundColor: Utils.bottomsheetColor,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: onItemSelected,
      ),
    );
  }

  void onItemSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

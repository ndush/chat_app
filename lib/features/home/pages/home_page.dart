import 'package:flutter/material.dart';
import 'package:chat_app/features/home/pages/home_view.dart';
import 'package:chat_app/features/message/pages/message_view.dart';
import 'package:chat_app/features/profile/pages/profile_view.dart';
import 'package:chat_app/features/settings/pages/settings_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> listOfPages = const [
    HomeView(),
    MessageView(),
    ProfileView(),
    SettingsView()
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: selectedIndex,
            children: listOfPages,
          ),
          Visibility(
            visible: selectedIndex == 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.green,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
                  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
                  BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

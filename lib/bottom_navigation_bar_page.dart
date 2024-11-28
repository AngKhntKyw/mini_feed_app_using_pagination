import 'package:flutter/material.dart';
import 'package:mini_feed_app/pages/add_new_item_page.dart';
import 'package:mini_feed_app/pages/home_page.dart';
import 'package:mini_feed_app/pages/notification_page.dart';
import 'package:mini_feed_app/pages/profile_page.dart';
import 'package:mini_feed_app/pages/saved_items_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    int screenIndex = 0;
    final screens = [
      const HomePage(),
      const SavedItemsPage(),
      const AddNewItemPage(),
      const NotificationPage(),
      const ProfilePage(),
    ];
    return SafeArea(
      top: true,
      child: Scaffold(
        body: screens[screenIndex],
        bottomNavigationBar: PersistentTabView(
          context,
          screens: screens,
          backgroundColor: Theme.of(context).primaryColor,
          items: [
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home),
              inactiveColorPrimary: Colors.grey,
              activeColorPrimary: Colors.blue,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.bookmark),
              inactiveColorPrimary: Colors.grey,
              activeColorPrimary: Colors.blue,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.add, color: Colors.white),
              inactiveColorPrimary: Colors.grey,
              activeColorPrimary: Colors.blue,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.notifications_on_rounded),
              inactiveColorPrimary: Colors.grey,
              activeColorPrimary: Colors.blue,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.person),
              inactiveColorPrimary: Colors.grey,
              activeColorPrimary: Colors.blue,
            ),
          ],
          animationSettings: const NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings(
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimationSettings(
              animateTabTransition: true,
              duration: Duration(milliseconds: 200),
              screenTransitionAnimationType:
                  ScreenTransitionAnimationType.slide,
            ),
          ),
          confineToSafeArea: true,
          navBarStyle: NavBarStyle.style15,
          stateManagement: true,
          onItemSelected: (value) {
            setState(() {
              screenIndex = value;
            });
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/pages/about/about_page.dart';
import 'package:rentcar_app/pages/favorite/favorite_page.dart';
import 'package:rentcar_app/pages/home/home_page.dart';
import 'package:rentcar_app/pages/notification/notification_page.dart';
import 'package:rentcar_app/shared/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        elevation: 0,
        backgroundColor: whiteColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              icNavigator,
              width: 18,
              color: currentIndex == 0 ? blueColor : const Color(0xff808191),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              icLove,
              width: 18,
              color: currentIndex == 1 ? blueColor : const Color(0xff808191),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              icBell,
              width: 18,
              color: currentIndex == 2 ? blueColor : const Color(0xff808191),
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              icUser,
              width: 18,
              color: currentIndex == 3 ? blueColor : const Color(0xff808191),
            ),
            label: 'About',
          ),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const FavoritePage();
        case 2:
          return const NotificationPage();
        case 3:
          return const AboutPage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}

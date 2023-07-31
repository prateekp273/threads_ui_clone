import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:th/features/home/screens/home.dart';
import 'package:th/features/home/screens/person_screen.dart';
import 'package:th/features/home/screens/post_screen.dart';
import 'package:th/features/home/screens/search_screen.dart';

import 'favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;
  onTap(int index) {
    setState(() {
      page = index;
    });
  }

  List<Widget> screens = [
    const Home(),
    const SearchScreen(),
    const PostScreen(),
    const FavoriteScreen(),
    // const Text('hello'),
    const PersonScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[page],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: page,
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.editSquare), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.heart), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile), label: 'Profile')
          ]),
    );
  }
}

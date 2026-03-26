import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  //navigation route name
  static const String routeName = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Quran'),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Hadeeth',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_base/shared/constants/app_colors.dart';

import 'data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center( // TODO: check
        child: bottomNavigationBarContents.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      selectedItemColor: AppColors.secondaryColor,
      onTap: (i) => _onItemTapped(i),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

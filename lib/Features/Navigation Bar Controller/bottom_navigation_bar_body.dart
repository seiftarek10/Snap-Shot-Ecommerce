import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/assets/assets.dart';
import 'package:snap_shot/Features/Navigation%20Bar%20Controller/Widgets/bottom_bar_item.dart';

class BottomNavigationBarBody extends StatefulWidget {
  const BottomNavigationBarBody({super.key});

  @override
  State<BottomNavigationBarBody> createState() =>
      _BottomNavigationBarBodyState();
}

class _BottomNavigationBarBodyState extends State<BottomNavigationBarBody> {
  int selectedIndex = 0;

  final List<String> _icons = [
    Assets.svgHome,
    Assets.svgBag,
    Assets.svgHeart,
    Assets.svgCategory,
    Assets.svgProfile,
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: Column()),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.instance.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            _icons.length,
            (index) => BottomBarItem(
              icon: _icons[index],
              isActive: selectedIndex == index,
              index: index,
              currentIndex: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

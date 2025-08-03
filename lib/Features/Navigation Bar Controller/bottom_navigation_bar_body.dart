import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/assets/assets.dart';
import 'package:snap_shot/Features/Cart/Presentation/View/Screen/cart_view.dart';
import 'package:snap_shot/Features/Category/Presentation/View/Screens/category_view.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Screens/home_page_view.dart';
import 'package:snap_shot/Features/Navigation%20Bar%20Controller/Widgets/bottom_bar_item.dart';
import 'package:snap_shot/Features/Profile/Presentation/View/Screens/profile_view.dart';

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
    Assets.svgCategory,
    Assets.svgHeart,
    Assets.svgBag,
    Assets.svgProfile,
  ];

  final List<Widget> _screens = [
    const HomePageView(),
    const CategoryView(),
    const Text('Heart'),
    const CartView(),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: _screens[selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.instance.white,
        height: context.height * 0.07,
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

import 'package:flutter/material.dart';
import 'package:coditrontask/app/view/pages/CartPage/cart_page.dart';
import 'package:coditrontask/app/view/pages/LikePage/like_page.dart';
import 'package:coditrontask/app/view/pages/ProfilePage/profile_page.dart';
import 'package:coditrontask/app/view/pages/RetailPage/retail_page.dart';
import '../../constants/colors.dart';


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    RetailPage(),
    LikePage(),
    CartPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.secondaryColor.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomBarItem(
              icon: Icons.maps_home_work_outlined,
              label: 'Retail',
              index: 0,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            BottomBarItem(
              icon: Icons.favorite,
              label: 'Like',
              index: 1,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            BottomBarItem(
              icon: Icons.shopping_cart,
              label: 'Cart',
              index: 2,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
            BottomBarItem(
              icon: Icons.person,
              label: 'Profile',
              index: 3,
              selectedIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;
  final int selectedIndex;
  final Function(int) onTap;

  BottomBarItem({
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const selectedColor = AppColors.whiteColor;
    const unselectedColor = AppColors.secondaryColor;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: selectedIndex == index ? AppColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 25,
              color: selectedIndex == index ? selectedColor : unselectedColor,
            ),
            const SizedBox(width: 5,),
            AnimatedCrossFade(
              firstChild: Container(width: 0, height: 0),
              secondChild: Text(
                label,
                style: const TextStyle(
                  color: selectedColor,
                ),
              ),
              crossFadeState: selectedIndex == index
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}

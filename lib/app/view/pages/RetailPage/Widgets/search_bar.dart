import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class SearchBar extends StatefulWidget {

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = screenWidth * 0.9;

    return Container(
      width: containerWidth,
      height: 48,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Icon(
                  Icons.search,
                  size: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: AppColors.darkColor,
                  fontSize: 17,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                  letterSpacing: -0.41,
                ),
              ),
            ),
          ),
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Icon(
                  Icons.mic,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

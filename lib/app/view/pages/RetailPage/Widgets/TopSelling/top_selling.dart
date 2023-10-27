import 'package:flutter/material.dart';
import 'tab_bar.dart';

class TopSelling extends StatefulWidget {
  const TopSelling({Key? key}) : super(key: key);

  @override
  State<TopSelling> createState() => _TopSellingState();
}

class _TopSellingState extends State<TopSelling> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
        ),
        child: Column(
          children: [
            TabScreen(),
          ],
        )
    );
  }
}

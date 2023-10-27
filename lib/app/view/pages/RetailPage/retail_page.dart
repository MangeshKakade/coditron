import 'package:coditrontask/app/view/pages/RetailPage/Widgets/special_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/assets.dart';
import 'package:coditrontask/app/constants/colors.dart';

import 'Widgets/header_side.dart';
import 'Widgets/orders_cards.dart';
import 'Widgets/TopSelling/top_selling.dart';

class RetailPage extends StatefulWidget {
  const RetailPage({Key? key}) : super(key: key);

  @override
  State<RetailPage> createState() => _RetailPageState();
}

class _RetailPageState extends State<RetailPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: Container(
        padding: EdgeInsets.only(left: 15,right: 15,top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSide(),
              SizedBox(height: 15),
              Container(
              width: double.infinity,
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
          ),
              SizedBox(height: 10,),
              SpecialOffers(),
              SizedBox(height: 20,),
              OrdersCards(),
              SizedBox(height: 20,),
              TopSelling()
            ],
          ),
        ),
      ),
    );
  }
}
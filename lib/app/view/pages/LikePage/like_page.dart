import 'package:coditrontask/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/assets.dart';
import '../../widgets/cards.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80, left: 10, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'My Wishlist',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 0.06,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Clear List',
                        style: TextStyle(
                          color: Color(0xFFF46565),
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 160,
                              height: 170,
                              child: ReusableCard(
                                assetPath: Images.shirt1,
                                title: "Title",
                                price: 100.0,
                                originalPrice: 120.0,
                                rating: 4.5,
                                icon: Icons.star,
                                heartIcon: Icons.favorite_border_outlined,
                              ),
                            ),
                            SizedBox(width: 20,),
                            SizedBox(
                              width: 160,
                              height: 170,
                              child: ReusableCard(
                                assetPath: Images.shirt2,
                                title: "Title",
                                price: 100.0,
                                originalPrice: 120.0,
                                rating: 4.5,
                                icon: Icons.star,
                                heartIcon: Icons.favorite_border_outlined,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(
                              width: 160,
                              height: 170,
                              child: ReusableCard(
                                assetPath: Images.shirt3,
                                title: "Title",
                                price: 100.0,
                                originalPrice: 120.0,
                                rating: 4.5,
                                icon: Icons.star,
                                heartIcon: Icons.favorite_border_outlined,
                              ),
                            ),
                            SizedBox(width: 20,),
                            SizedBox(
                              width: 160,
                              height: 170,
                              child: ReusableCard(
                                assetPath: Images.shirt4,
                                title: "Title",
                                price: 100.0,
                                originalPrice: 120.0,
                                rating: 4.5,
                                icon: Icons.star,
                                heartIcon: Icons.favorite_border_outlined,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(
                              width: 160,
                              height: 170,
                              child: ReusableCard(
                                assetPath: Images.shirt1,
                                title: "Title",
                                price: 100.0,
                                originalPrice: 120.0,
                                rating: 4.5,
                                icon: Icons.star,
                                heartIcon: Icons.favorite_border_outlined,
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

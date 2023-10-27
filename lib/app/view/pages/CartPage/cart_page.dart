import 'package:coditrontask/app/constants/assets.dart';
import 'package:coditrontask/app/view/pages/CartPage/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../widgets/cards.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cart (4)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 0.06,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          Images.headerImage2,
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 30,),
                        Container(
                          width: 100,
                          height: 40,
                          padding: const EdgeInsets.only(top: 5, right: 1, bottom: 8),
                          decoration: ShapeDecoration(
                            color: Color(0xFFF46565),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 18,
                                height: 18,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                    Icon(Icons.delete,color: Colors.white,)
                                    ]),
                              ),
                              SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Clear Cart',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CustomCard(
                title: 'Product Title',
                assetPath: Images.bagImage,
                price: 100.0,
                size: '56mm',
                color: 'Brown-Gold',
                rating: 4.5,
                discount: 0.5,
                freeShipping: true,
              ),
              CustomCard(
                title: 'Product Title',
                assetPath: Images.bagImage,
                price: 100.0,
                size: '56mm',
                color: 'Brown-Gold',
                rating: 4.5,
                discount: 0.5,
                freeShipping: true,
              ),
              CustomCard(
                title: 'Product Title',
                assetPath: Images.bagImage,
                price: 100.0,
                size: '56mm',
                color: 'Brown-Gold',
                rating: 4.5,
                discount: 0.5,
                freeShipping: true,
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children: [
                    Text(
                      'Recommended',
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
              ),
              Container(
                padding: EdgeInsets.only(left: 30,right: 20),
                child: Column(
                  children: [
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
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 80,
                decoration: ShapeDecoration(
                  color: Color(0xFF37A95B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 6,
                      offset: Offset(0, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                ),
                              ),
                              const SizedBox(width: 2),
                              Text(
                                '200.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 0.06,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 15),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/orderConfirm');
                              },
                              child: Container(
                                width: 140,
                                height: 35,
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 12,
                                  right: 18,
                                  bottom: 10,
                                ),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Checkout (2)',
                                      style: TextStyle(
                                        color: Color(0xFF37A95B),
                                        fontSize: 18,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w600,
                                        height: 0.06,
                                        letterSpacing: 0.38,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

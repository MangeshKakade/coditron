import 'package:coditrontask/app/constants/assets.dart';
import 'package:coditrontask/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widgets/cards.dart';

class EmptyCartScreen extends StatefulWidget {
  const EmptyCartScreen({Key? key}) : super(key: key);

  @override
  State<EmptyCartScreen> createState() => _EmptyCartScreenState();
}

class _EmptyCartScreenState extends State<EmptyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: Container(
        padding: EdgeInsets.only(top: 60,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      height: 0.06,
                    ),
                  ),
                  SvgPicture.asset(
                    Images.headerImage2,
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              Image.asset(Images.empty),
              SizedBox(height: 20,),
              GestureDetector(
                  onTap: (){
                    Get.toNamed('/bottombar');
                  },
                  child: Container(
                      width: 250,
                      height: 60,
                      padding: const EdgeInsets.only(
                        top: 12,
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0xFFCD2222),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10,left: 10),
                            child: Icon(Icons.shopping_cart,color: AppColors.whiteColor,size: 25,),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Continue Shopping',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                              letterSpacing: 0.38,
                            ),
                          ),
                        ],
                      )
                  )
                  )
              ),
              SizedBox(height: 70,),
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
              Container(
                padding: EdgeInsets.only(left: 10),
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

            ],
          ),
        ),
      ),
    );
  }
}

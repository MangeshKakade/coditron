import 'package:coditrontask/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/assets.dart';

class OrderPlaceThankYouPage extends StatefulWidget {
  const OrderPlaceThankYouPage({Key? key}) : super(key: key);

  @override
  State<OrderPlaceThankYouPage> createState() => _OrderPlaceThankYouPageState();
}

class _OrderPlaceThankYouPageState extends State<OrderPlaceThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF3980CB),
        borderRadius: BorderRadius.circular(25)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            'Order Placed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 0.06,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.cancel_outlined,color: AppColors.whiteColor,),
                        ),
                      ],
                    ),
                  ),
                  Lottie.asset(Images.sucess,width: 170,height: 170),
                  SizedBox(height: 20,),
                  Text(
                    'Thank! your order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF8EFFFF),
                      fontSize: 25,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      height: 0.04,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'has been placed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF8EFFFF),
                      fontSize: 20,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      height: 0.04,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image.asset(Images.brand,height: 50,width: 50,),
                  SizedBox(height: 30,),
                  Text(
                    "You've been rewarded",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF6E5),
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "with 23 LIX",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF6E5),
                      fontSize: 20,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      height: 0.06,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    '230, 000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF6E5),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    '230,023',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFC857),
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      height: 0.06,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Your LIX Rewards now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF6E5),
                      fontSize: 13,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    '\$ 23.00 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE5FFED),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    '\$ 23.20 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4CF782),
                      fontSize: 24,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      height: 0.06,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Your LIX reward value is now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE5FFED),
                      fontSize: 13,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 40),
                    child: GestureDetector(
                        onTap: (){
                          Get.toNamed('/orderstatus');
                        },
                        child: Container(
                            width: double.infinity,
                            height: 56,
                            padding: const EdgeInsets.only(
                              top: 12,
                            ),
                            decoration: ShapeDecoration(
                              color: Color(0xFFCD2222),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),child: Center(
                          child: Text(
                            'Continue Shopping',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                              letterSpacing: 0.38,
                            ),
                          )
                        )
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Check The Order Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                      letterSpacing: 0.38,
                    ),
                  ),
                  SizedBox(height: 50,),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

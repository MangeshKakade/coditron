import 'package:coditrontask/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/assets.dart';
import '../CartPage/widgets/custom_card.dart';
import 'PaymentMethod/payment_method_page.dart';

class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({Key? key}) : super(key: key);

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  void _openPaymentMethodModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: PaymentMethodScreen(),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 0, right: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back, size: 35, color: AppColors.darkColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 20),
                    child: Text(
                      'Order Confirmation',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 0.06,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [
                      Icon(Icons.location_on)
                    ]),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Delivery/Shipping Address',
                                style: TextStyle(
                                  color: Color(0xFF5C5D60),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Home-international',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Lusail, Fox Hills P2, P.O.BOX 22113',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '+99 5033 4444',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 50,
                                  height: 50,
                                  padding: const EdgeInsets.all(8),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF0F0F0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Stack(children: [
                                          Icon(Icons.edit_outlined,)
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70,),
            Container(
              width: double.infinity,
              height: 76,
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [
                        Icon(Icons.payments_sharp)
                        ]),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Payment Method',
                              style: TextStyle(
                                color: Color(0xFF5C5D60),
                                fontSize: 16,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Container(
                          width: double.infinity,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Visa ***1234',
                                        style: TextStyle(
                                          color: Color(0xFF262626),
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w800,
                                          height: 0.09,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Expires in 01/25',
                                        style: TextStyle(
                                          color: Color(0xFF747D80),
                                          fontSize: 13,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(8),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF0F0F0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: [
                                          Icon(Icons.edit_outlined,)
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
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
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Summary',
                          style: TextStyle(
                            color: Color(0xFF5C5D60),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          '\$ 209.67 ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Free',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFF46565),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          '- \$ 3.50 ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFF46565),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.09,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CODE: DISC15!',
                          style: TextStyle(
                            color: Color(0xFFF46565),
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Stack(children: [
                                  Icon(Icons.edit_outlined)
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          '\$ 9.67',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.09,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 80,
              decoration: ShapeDecoration(
                color: AppColors.whiteColor,
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
                                color:  Color(0xFF0E7A30),
                                fontSize: 24,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0.06,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              '209.67',
                              style: TextStyle(
                                color:  Color(0xFF0E7A30),
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
                            onTap: _openPaymentMethodModal,
                            child: Container(
                              width: 125,
                              height: 35,
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 12,
                                right: 18,
                                bottom: 10,
                              ),
                              decoration: ShapeDecoration(
                                color:  Color(0xFF0E7A30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Place Order',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
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
    );
  }
}

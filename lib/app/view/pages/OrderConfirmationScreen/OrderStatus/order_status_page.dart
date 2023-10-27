import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';
import '../../CartPage/widgets/custom_card.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({Key? key}) : super(key: key);

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 10, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.toNamed('/emptycart');
                            },
                            icon: Icon(Icons.arrow_back, size: 35, color: AppColors.darkColor),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                            child: Text(
                              'Order Status',
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
                      Icon(Icons.share)

                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Order',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 13,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      '#0000000419',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 31,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 0.04,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 216,
                    height: 40,
                    padding: EdgeInsets.only(left: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFE5FFED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.gpp_good),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            ' Order Confirmed',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0E7A30),
                              fontSize: 20,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              height: 0.08,
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
                  SizedBox(height: 30,),
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
                  SizedBox(height: 20,),
                  Text(
                    'Items',
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
            SizedBox(height: 30,),
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
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Payed',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.06,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          '\$ 209.67 ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 0.06,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
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

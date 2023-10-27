import 'package:coditrontask/app/constants/colors.dart';
import 'package:coditrontask/app/view/pages/OrderConfirmationScreen/DeliverShippingAddress/delivery_shipping_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

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
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: DeliverShippingAddressScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                          'Payment Method',
                          style: TextStyle(
                            color: Colors.black,
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
                        icon: Icon(Icons.cancel_outlined),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.payment_outlined, size: 26),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Card',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked1 = !isChecked1;
                        });
                      },
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isChecked1 ? Colors.green : Colors.transparent,
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            child: isChecked1
                                ? Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              ),
                            )
                                : null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: ShapeDecoration(
                              color: Color(0xFFFFF6E5),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Default Card',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF99701E),
                                    fontSize: 13,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
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
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Visa ***234',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 0.09,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked2 = !isChecked2;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isChecked2 ? Colors.green : Colors.transparent,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 2,
                                    ),
                                  ),
                                  child: isChecked2
                                      ? Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                      : null,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            'Expires in 01/25',
                            style: TextStyle(
                              color: Color(0xFF747D80),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Debit ***1222',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 0.09,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked3 = !isChecked3;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isChecked3 ? Colors.green : Colors.transparent,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 2,
                                    ),
                                  ),
                                  child: isChecked3
                                      ? Center(
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                      : null,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            'Expires in 01/25',
                            style: TextStyle(
                              color: Color(0xFF747D80),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add New Card',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 0.09,
                            ),
                          ),
                          Icon(Icons.add,size: 30,)
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF5C5D60),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.apple),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Apple Pay',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isChecked4 = !isChecked4;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isChecked4 ? Colors.black : Colors.transparent,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: isChecked4
                            ? Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 18,
                          ),
                        )
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: GestureDetector(
                onTap: _openPaymentMethodModal,
                child: Container(
                    width: double.infinity,
                    height: 56,
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),child: Center(
                    child: Text(
                    'Use Selected Method',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                      letterSpacing: 0.38,
                    ),
                ),
                  )
                )
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}

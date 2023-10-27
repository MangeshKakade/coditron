import 'package:coditrontask/app/view/pages/OrderConfirmationScreen/OrderPlacedScreen/order_placed_thank_you_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DeliverShippingAddressScreen extends StatefulWidget {
  const DeliverShippingAddressScreen({Key? key}) : super(key: key);

  @override
  State<DeliverShippingAddressScreen> createState() => _DeliverShippingAddressScreenState();
}

class _DeliverShippingAddressScreenState extends State<DeliverShippingAddressScreen> {

  void _orderPlacedScreen() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30,top: 50),
          child: FractionallySizedBox(
            heightFactor: 1,
            child: OrderPlaceThankYouPage(),
          ),
        );
      },
    );
  }
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

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
                          'Delivery/Shipping Address',
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
                        Icon(Icons.location_on, size: 26),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Locations',
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
                                  'Default Address',
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
                            'Home-international',
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
                            'Lusail, Fox Hills P2, P.O.BOX 22113\n',
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
                            'Home-local',
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
                            'The Pearl, viva bahriya, tower 8 ,\n P.O.BOX 512 +99 5033 4444',
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
                            'Home B',
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
                            'Lusail, Fox Hills P2\n,+99 5033 4444',
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
                      SizedBox(height: 5,),


                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add New Shipping address',
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
                SizedBox(height: 5,),


              ],
            ),
          ),
          SizedBox(height: 20,),
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
                    Icon(Icons.money),
                    SizedBox(width: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'billing',
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
                onTap: _orderPlacedScreen,
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
                    'Use Selected Location',
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
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}

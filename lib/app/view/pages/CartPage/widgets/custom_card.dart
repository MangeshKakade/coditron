import 'package:coditrontask/app/constants/assets.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String assetPath;
  final double price;
  final String size;
  final String color;
  final double rating;
  final double discount;
  final bool freeShipping;

  CustomCard({
    required this.title,
    required this.assetPath,
    required this.price,
    required this.size,
    required this.color,
    required this.rating,
    required this.discount,
    required this.freeShipping,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isChecked = false;
  int quantity = 0; // Initial quantity

  void toggleCheckbox(bool? value) {
    if (value != null) {
      setState(() {
        isChecked = value;
      });
    }
  }


  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Color(0xFFF5F5F5)),
          top: BorderSide(color: Color(0xFFF5F5F5)),
          right: BorderSide(color: Color(0xFFF5F5F5)),
          bottom: BorderSide(width: 1, color: Color(0xFFF5F5F5)),
        ),
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 148,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Checkbox(
                                  value: isChecked,
                                  onChanged: toggleCheckbox,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 12),
                          Container(
                            width: 96,
                            height: 96,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.assetPath),
                                fit: BoxFit.contain,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 30,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            widget.title,
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
                                        Container(
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF5F5F5),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                ),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      widget.size,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(0xFF5C5D60),
                                                        fontSize: 13,
                                                        fontFamily: 'Lato',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF5F5F5),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                                ),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      widget.color,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(0xFF5C5D60),
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
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.95,
                                          child: Container(
                                            padding: const EdgeInsets.all(4),
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD87D29),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Image.asset(Images.lixicon)
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  '${widget.discount}',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontFamily: 'Lato',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          widget.freeShipping ? 'Free Shipping' : 'Shipping: \$10',
                                          style: TextStyle(
                                            color: widget.freeShipping ? Color(0xFF37A95B) : Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                '\$',
                                                style: TextStyle(
                                                  color: Color(0xFF262626),
                                                  fontSize: 16,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0.09,
                                                ),
                                              ),
                                              const SizedBox(width: 2),
                                              Text(
                                                '${widget.price}',
                                                style: TextStyle(
                                                  color: Color(0xFF262626),
                                                  fontSize: 16,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w800,
                                                  height: 0.09,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 24),
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  GestureDetector(
                                                    onTap: decrementQuantity,
                                                    child: Container(
                                                      width: 40,
                                                      padding: const EdgeInsets.all(8),
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF0F0F0),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(14),
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 24,
                                                            height: 24,
                                                            clipBehavior: Clip.antiAlias,
                                                            decoration: BoxDecoration(),
                                                            child: Stack(
                                                              children: [
                                                                Icon(Icons.remove, color: Colors.black),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(width: 12),
                                              Text(
                                                '$quantity',
                                                style: TextStyle(
                                                  color: Color(0xFF262626),
                                                  fontSize: 16,
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.w800,
                                                  height: 0.09,
                                                ),
                                              ),
                                              const SizedBox(width: 12),
                                              GestureDetector(
                                                onTap: incrementQuantity,
                                                child: Container(
                                                  width: 40,
                                                  padding: const EdgeInsets.all(8),
                                                  decoration: ShapeDecoration(
                                                    color: Colors.black,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(14),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 24,
                                                        height: 24,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(),
                                                        child: Stack(
                                                          children: [
                                                            Icon(Icons.add, color: Colors.white),
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

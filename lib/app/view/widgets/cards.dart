import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final double price;
  final double originalPrice;
  final double rating;
  final IconData icon;
  final IconData? heartIcon;

  ReusableCard({
    required this.assetPath,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.icon,
    this.heartIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (heartIcon != null)
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 2),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      height:30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(
                        heartIcon,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width / 4.65,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(assetPath),
                          fit: BoxFit.contain,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (heartIcon == null)
              Container(
                height: MediaQuery.of(context).size.width / 4.65,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetPath),
                    fit: BoxFit.contain,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            icon,
                            color: Colors.orange,
                            size: 16,
                          ),
                          Text(
                            rating.toStringAsFixed(1),
                            style: const TextStyle(
                              color: Color(0xFF5C5D60),
                              fontSize: 13,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Color(0xFF5C5D60),
                          fontSize: 13,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$ ${price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '\$ ${originalPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Color(0xFF5C5D60),
                          fontSize: 11,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

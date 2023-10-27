import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';
import '../../../../widgets/cards.dart';

class MensTshirtCards extends StatefulWidget {
  const MensTshirtCards({Key? key}) : super(key: key);

  @override
  State<MensTshirtCards> createState() => _MensTshirtCardsState();
}

class _MensTshirtCardsState extends State<MensTshirtCards> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 90,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF5C5D60)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Text(
                          '4 & Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF5C5D60),
                            fontSize: 13,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 40,
                    width: 90,
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF5C5D60)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Text(
                          '3 & Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF5C5D60),
                            fontSize: 13,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 40,
                  width: 110,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF5C5D60)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Lowe Price',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF5C5D60),
                          fontSize: 13,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Selling',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  height: 0.06,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,bottom: 10),
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFFD91F26),
                    fontSize: 13,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 50,),
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

        ],
      ),
    );
  }
}

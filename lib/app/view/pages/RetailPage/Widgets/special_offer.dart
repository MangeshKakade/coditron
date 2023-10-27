import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Special Offers',
                style: TextStyle(
                  color: AppColors.darkColor,
                  fontSize: 24,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  height: 0.06,
                ),
              ),
              Row(
                children: [
                  Text(
                    'more items',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 13,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: AppColors.primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              height: 40,
              width: 90,
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFFFF6E5),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text(
                '5% Off',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF99701E),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 40,
              width: 90,
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFFFFE5E5),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Text(
                '10% Off',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFCD2222),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 40,
              width: 90,
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFFE5FFED),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Text(
                '15% Off',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF0E7A30),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0.09,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}





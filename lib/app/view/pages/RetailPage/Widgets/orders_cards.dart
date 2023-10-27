import 'package:flutter/material.dart';

import '../../../../constants/assets.dart';
import '../../../widgets/cards.dart';

class OrdersCards extends StatefulWidget {
  const OrdersCards({Key? key}) : super(key: key);

  @override
  State<OrdersCards> createState() => _OrdersCardsState();
}

class _OrdersCardsState extends State<OrdersCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'ORDERS FROM  USD 199',
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
        SizedBox(height: 10,),
        Container(
          height: 150,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 150,
                child: ReusableCard(
                  assetPath: Images.bagImage,
                  title: "Title",
                  price: 100.0,
                  originalPrice: 120.0,
                  rating: 4.5,
                  icon: Icons.star,
                ),
              ),
              SizedBox(width: 15,),
              SizedBox(
                width: 150,
                child: ReusableCard(
                  assetPath: Images.bagImage,
                  title: "Title",
                  price: 100.0,
                  originalPrice: 120.0,
                  rating: 4.5,
                  icon: Icons.star,
                ),
              ),
              SizedBox(width: 15,),
              SizedBox(
                width: 150,
                child: ReusableCard(
                  assetPath: Images.bagImage,
                  title: "Title",
                  price: 100.0,
                  originalPrice: 120.0,
                  rating: 4.5,
                  icon: Icons.star,
                ),
              ),
              SizedBox(width: 15,),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 150,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 150,
                child: ReusableCard(
                  assetPath: Images.bagImage,
                  title: "Title",
                  price: 100.0,
                  originalPrice: 120.0,
                  rating: 4.5,
                  icon: Icons.star,
                ),
              ),
              SizedBox(width: 15,),
              SizedBox(
                width: 150,
                child: ReusableCard(
                  assetPath: Images.bagImage,
                  title: "Title",
                  price: 100.0,
                  originalPrice: 120.0,
                  rating: 4.5,
                  icon: Icons.star,
                ),
              ),
              SizedBox(width: 15,),
              SizedBox(
                width: 150,
                child: ReusableCard(
                  assetPath: Images.bagImage,
                  title: "Title",
                  price: 100.0,
                  originalPrice: 120.0,
                  rating: 4.5,
                  icon: Icons.star,
                ),
              ),
              SizedBox(width: 15,),
            ],
          ),
        ),
        SizedBox(height: 10,),

      ],
    );
  }


}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';

class HeaderSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Images.linkdinImage,
            width: 50,
            height: 50,
          ),
          SizedBox(width: 24),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: AppColors.darkColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 7),
                        SvgPicture.asset(
                          Images.liXBrand,
                          width: 15,
                          height: 15,
                        ),
                        Text(
                          '199.5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 11,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 24),
              SvgPicture.asset(
                Images.headerImage2,
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

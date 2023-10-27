import 'package:flutter/material.dart';

class DiscountsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DiscountItem(text: '5% Off', color: Color(0xFFFFF6E5), textColor: Color(0xFF99701E)),
          SizedBox(width: 15),
          DiscountItem(text: '10% Off', color: Color(0xFFFFE5E5), textColor: Color(0xFFCD2222), borderColor: Color(0xFFCD2222)),
          SizedBox(width: 15),
          DiscountItem(text: '15% Off', color: Color(0xFFE5FFED), textColor: Color(0xFF0E7A30)),
        ],
      ),
    );
  }
}

class DiscountItem extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Color? borderColor;

  DiscountItem({required this.text, required this.color, required this.textColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: borderColor != null ? BorderSide(width: 1, color: borderColor!) : BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              height: 0.09,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  IconData icon;
  Color color;
  double height;
  double width;
  VoidCallback onPressed;

  CustomButton({
    required this.icon,
    required this.color,
    required this.height,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 8),
            Text("Button Text"),
          ],
        ),
      ),
    );
  }
}

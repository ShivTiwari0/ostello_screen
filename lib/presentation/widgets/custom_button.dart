import 'package:flutter/material.dart';
import 'package:ostello/core/extension.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(margin: const EdgeInsets.only(left:8),
        width: context.width()*0.95,
        height: context.height()*0.06 ,
        decoration: BoxDecoration(
          color: const Color(0xFFF3F4F8), // Background color #F3F4F8
          border: Border.all(
            color: const Color(0xFFE7E8EC), // Border color #E7E8EC
            width: 0.5,               // Border width
          ),
          borderRadius: BorderRadius.circular(22.0), // Rounded borders
        ),
        padding: const EdgeInsets.all(16.0), // Add padding
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,fontWeight: FontWeight.w800,
              color: Color(0xFF737A87), // Text color
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ostello/core/extension.dart';
import 'package:ostello/core/ui.dart';

class CustomBox extends StatelessWidget {
  const CustomBox({super.key, required this.iconName, required this.title});
  final String iconName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: context.width() * 0.45,
      height: context.height() * 0.26,
      padding: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x4D979797),
            offset: Offset(6, 6),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(iconName),
          Center(
              child: Text(
            title,
            style: TextStyles.body1
                .copyWith(color: AppColors.text, fontWeight: FontWeight.w900),
          ),
          )
        ],
      ),
    );
  }
}

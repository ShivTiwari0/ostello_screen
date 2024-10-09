import 'package:flutter/material.dart';
import 'package:ostello/core/extension.dart';
import 'package:ostello/core/ui.dart';

class ShortsWidhget extends StatelessWidget {
  const ShortsWidhget({super.key, required this.iconName, required this.title});
  final String iconName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: context.width() * 0.35,
          child: Image.asset(
            iconName,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
          top: 12,
          left: 10,
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: AppColors.white,
              ),
              Text(
                '2.5M',
                style: TextStyle(color: AppColors.white),
              ),
            ],
          )),
      Positioned(
          left: 12,
          top: context.height() * 0.17,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Manoj Classes',
                style: TextStyles.heading3
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              Text('Maths - 10th',
                  style: TextStyles.heading3
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w500))
            ],
          ))
    ]);
  }
}

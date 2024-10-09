import 'package:flutter/material.dart';
import 'package:ostello/core/extension.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          width: 255, 
          height: context.height() * 0.05  ,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),  
          decoration: BoxDecoration(
            color: const Color(0xFFFCFCFC),
            borderRadius: const BorderRadius.all(
          Radius.circular(15), 
            ),
            border: Border.all(
              color: const Color(0xFFF0E3FF), 
              width: 1, 
            ),
          ),
          child:  Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here...",
                    border: InputBorder.none,  
                  ),
                ),
              ),
              const SizedBox(width: 11),  
            Image.asset('assets/search-normal.png')
            ],
         
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SelectedButton extends StatefulWidget {
  const SelectedButton({super.key, required this.title});
  final String title;

  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
      width: 90, 
      height: 40, 
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD8D8D8), width: 1),  
        borderRadius: const BorderRadius.all(
           Radius.circular(8), // 8px border-radius on top left
         
        ),
      ),
      child:Text(widget.title));
  }
}

import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedValue; 
  final List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
      width: 130 , 
      height: 40, 
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD8D8D8), width: 1),
        borderRadius: const BorderRadius.all(
           Radius.circular(8), // 8px border-radius on top left
         
        ),
      ),
      child: Row(
        children: [Image.asset('assets/dd.png',height: 20, fit: BoxFit.fitWidth,),
        SizedBox(width: 5,),
          Flexible(
            child: DropdownButtonHideUnderline( // Hides default underline
              child: DropdownButton<String>(
                isExpanded: true, // Takes full width of the container  
                value: selectedValue, // Currently selected value
                hint: const Text('Filters'), 
                icon: const Icon(Icons.arrow_drop_down), 
                items: dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),  
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

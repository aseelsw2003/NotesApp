import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostomTextFeild extends StatelessWidget {
  const CostomTextFeild({super.key});
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: KprimaryColor),
        border: buildMethod(),
        enabledBorder:buildMethod(),
        focusedBorder: buildMethod(KprimaryColor),
        
        
        
      ),
    );
  }

  OutlineInputBorder buildMethod([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:  BorderSide(color: color ?? Colors.white),
      );
  }
}
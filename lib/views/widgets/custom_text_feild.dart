import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CostomTextFeild extends StatelessWidget {
  const CostomTextFeild({super.key , required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
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
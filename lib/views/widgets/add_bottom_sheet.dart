import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';


class AddModalBottomsheet extends StatelessWidget {
  const AddModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CostomTextFeild(
               hint: 'title',
               
            ),
            SizedBox(
              height: 16,
            ),
            CostomTextFeild(
              hint: 'content', maxlines: 5
            ),
            SizedBox(
              height: 55,
            ),
            CustomButton(),
          ],
            
        ),
      ),
    );
  }
}

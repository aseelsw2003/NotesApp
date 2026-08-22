import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
          children: [
            SizedBox(
            height: 55,
          ),
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(
            height: 45,
          ),
          CostomTextFeild(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CostomTextFeild(hint: 'Content', maxlines: 5,),

            
          ],
        ),
    


    );
  }
}
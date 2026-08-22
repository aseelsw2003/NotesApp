import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';


class AddModalBottomsheet extends StatelessWidget {
  const AddModalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CostomTextFeild(),
        ],
      ),
    );
  }
}
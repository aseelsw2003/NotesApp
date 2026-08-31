
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_feild.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
GlobalKey <FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(
            height: 24,
          ),
          CostomTextFeild(
            onSaved: (value){
              title = value;
            },
             hint: 'title',
             
          ),
          const  SizedBox(
            height: 16,
          ),
          CostomTextFeild(
            onSaved: (value){
              subtitle = value;
            },
            hint: 'content', maxlines: 5
          ),
          SizedBox(
            height: 55,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
          
      ),
    );
  }
}

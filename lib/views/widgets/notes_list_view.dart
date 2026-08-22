import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';


class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const[
   Colors.blueGrey,
   Colors.orange,
   Colors.blue,
   Colors.indigoAccent,
   Colors.indigo,
   Colors.lightBlue,
   Colors.lightGreen,

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: data.length,

        padding: EdgeInsets.zero,
        itemBuilder: (context , index){
        return NoteItem(
          color: data[index % data.length],
        );
      }),
    );
  }
}
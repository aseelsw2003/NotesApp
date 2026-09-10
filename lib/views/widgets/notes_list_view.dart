import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [
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
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
           // itemCount: data.length,
            itemCount: notes.length,

            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return NoteItem(color: data[index % data.length]);
            },
          ),
        );
      },
    );
  }
}

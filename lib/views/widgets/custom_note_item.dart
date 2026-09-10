import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  final Color color;
  final NoteModel note;
  const NoteItem({super.key, required this.color, required this.note});

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/editNoteView');
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          padding: EdgeInsets.only(top: 24,bottom: 16,left: 10),
          decoration: BoxDecoration(
           color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(note.title,
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 24
                 ),),
                
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: Text(note.subtitle,
                   style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 16
                   ),
                  ),
                ),
                trailing: IconButton(
                  onPressed:(){
                    note.delete();

                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  }, icon: Icon(Icons.delete,
                color: Colors.black,
                size: 32,
                )),
              ),
              
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(note.date,
                        
                style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 16),
                ),
              ),
            ],
            
          ),
          
        ),
      ),
    );
  }
}

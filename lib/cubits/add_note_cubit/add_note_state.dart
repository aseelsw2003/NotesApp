part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}
final class AddNoteLogaing extends AddNoteState {}
final class AddNoteSuccess extends AddNoteState {}
final class AddNoteFailure extends AddNoteState {

  final String errmassage;

  AddNoteFailure(this.errmassage);

}

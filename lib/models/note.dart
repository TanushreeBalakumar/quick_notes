/*class Note {
  final String title;
  final String description;

  Note({
    required this.title,
    required this.description,
  });
}*/

import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable()
class Note {
  final String title;
  final String description;

  Note({
    required this.title,
    required this.description,
  });

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);
}

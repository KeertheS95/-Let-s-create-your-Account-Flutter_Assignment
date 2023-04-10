import 'package:json_annotation/json_annotation.dart';

part 'genres.g.dart';

@JsonSerializable(explicitToJson: true)
class Genres {
  final String genre;

  Genres({
    required this.genre,
  });

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

  Map<String, dynamic> toJson() => _$GenresToJson(this);
}

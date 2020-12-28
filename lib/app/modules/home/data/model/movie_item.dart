import 'dart:convert';

import 'package:desafioma9/app/modules/home/domain/entities/movie_item_model.dart';

class MovieItem extends MovieItemModel {
  MovieItem(
    {String date,
    String genre,
    String link,
    String poster,
    String synopsis,
    String synopsisFull,
    String title,}
  ) : super (
    date: date,
    genre: genre,
    link: link,
    poster: poster,
    synopsis: synopsis,
    synopsisFull: synopsisFull,
    title: title,
  );

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'genero': genre,
      'link': link,
      'poster': poster,
      'sinopse': synopsis,
      'sinopseFull': synopsisFull,
      'titulo': title,
    };
  }

  factory MovieItem.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MovieItem(
      date: map['data'],
      genre: map['genero'],
      link: map['link'],
      poster: map['poster'],
      synopsis: map['sinopse'],
      synopsisFull: map['sinopseFull'],
      title: map['titulo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieItem.fromJson(String source) => MovieItem.fromMap(json.decode(source));
}
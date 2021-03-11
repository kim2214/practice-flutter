import 'package:flutter/material.dart';

class Marvel {
  String imagePath; // 영화 이미지 경로
  String movieName; // 영화 제목
  String movietime; // 영화 러닝타임

  Marvel(
    {@required this.movieName,
  @required this.movietime,
  @required this.imagePath
  });
}

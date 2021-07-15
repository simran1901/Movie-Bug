import 'package:flutter/material.dart';

import '../models/movie.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({
    Key? key,
    required this.movie,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _moviePosterWidget(movie.posterURL()),
        ],
      ),
    );
  }

  Widget _moviePosterWidget(String _imageUrl) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(_imageUrl)),
      ),
    );
  }
}

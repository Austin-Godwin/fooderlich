import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.lightTextTheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: 28.0,
              ),
              const SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: theme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: theme.headline3,
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              // const snackBar = SnackBar(content: Text('Favorite Pressed'));
              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                _isFavorited = !_isFavorited;
              });
            },
            icon: Icon(
              _isFavorited ? Icons.favorite : Icons.favorite_border,
            ),
            iconSize: 30.0,
            color: Colors.red[400],
          )
        ],
      ),
    );
  }
}

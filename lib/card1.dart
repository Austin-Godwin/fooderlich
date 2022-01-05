import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.darkTextTheme;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350.0,
          height: 450.0,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: theme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: theme.headline2,
              ),
              top: 20.0,
            ),
            Positioned(
              child: Text(
                description,
                style: theme.bodyText1,
              ),
              bottom: 30.0,
              right: 0.0,
            ),
            Positioned(
              child: Text(
                chef,
                style: theme.bodyText1,
              ),
              bottom: 10.0,
              right: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}

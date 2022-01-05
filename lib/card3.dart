import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.darkTextTheme;
    final chipTextTheme = theme.bodyText1;

    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350.0,
          height: 450.0,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Recipe Trends',
                    style: theme.headline2,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12.0,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text(
                      'Greens',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text(
                      'wheat',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text(
                      'Pescetarian',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text(
                      'Mints',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text(
                      'Lemongrass',
                      style: chipTextTheme,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

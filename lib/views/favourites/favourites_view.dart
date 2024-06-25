import 'package:flutter/material.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({super.key});

  @override
  State<FavouritesView> createState() => _FavouritesView();
}

class _FavouritesView extends State<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 0, 45, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/favourites-empty.png', width: 150),
            const SizedBox(height: 60),
            Text('No results found', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 20),
            Text(
              'Try adjusting your filters or search with different terms to find what you\'re looking for.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(height: 1.9),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

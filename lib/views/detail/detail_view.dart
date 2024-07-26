import 'package:canoo/views/widgets/share/back_arrow.dart';
import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: 'assets/design/detail.jpg',
      scale: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackArrow(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outline),
            ),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ],
        ),
        body: const Column(
          children: [
            Text('The Hangar Flight Museum'),
          ],
        ),
      ),
    );
  }
}

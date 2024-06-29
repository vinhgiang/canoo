import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 28, 20, 10),
            child: Row(
              children: [
                const SizedBox(width: 60),
                FilledButton(
                  onPressed: () {},
                  child: const Text('All'),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/places/hangar-flight-museum.jpg',
                    height: 480,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 53,
                      height: 53,
                      padding: const EdgeInsets.all(8),
                      color: Colors.green,
                      child: SvgPicture.asset(
                        'assets/icons/museum.svg',
                        semanticsLabel: 'Museum',
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

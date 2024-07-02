import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                  ),
                  Positioned(
                    bottom: 20,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'The Hangar Flight Museum',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              'Calgary, AB',
                              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              GridView(
                // these 2 properties are important when wrapping a GridView inside a SingleChildScrollView
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 170 / 200,
                ),
                children: [
                  for (int i = 0; i < 5; i++)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/places/heritage-park-historical-village.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
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

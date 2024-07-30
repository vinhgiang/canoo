import 'package:canoo/directories/category.dart';
import 'package:canoo/views/widgets/grid_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreDealsView extends StatefulWidget {
  const ExploreDealsView({super.key});

  @override
  State<ExploreDealsView> createState() => _ExploreDealsViewState();
}

class _ExploreDealsViewState extends State<ExploreDealsView> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
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
              const PlacesGrid(),
              const SizedBox(height: 55),
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: SizedBox(
                    height: 95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/places/heritage-park-historical-village.jpg',
                              width: MediaQuery.of(context).size.width * 0.18,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                padding: const EdgeInsets.all(5),
                                color: Colors.green,
                                child: CategoryIcon.icons[Category.train]!,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'TELUS Spark Science Centre',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.location_on_rounded),
                                const SizedBox(width: 2),
                                Text(
                                  '14 km',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

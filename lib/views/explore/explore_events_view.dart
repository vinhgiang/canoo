import 'package:canoo/views/explore/widgets/events_filter.dart';
import 'package:canoo/views/widgets/places_grid.dart';
import 'package:canoo/views/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreEventsView extends StatefulWidget {
  const ExploreEventsView({super.key});

  @override
  State<ExploreEventsView> createState() => _ExploreEventsViewState();
}

class _ExploreEventsViewState extends State<ExploreEventsView> with AutomaticKeepAliveClientMixin {
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
          const EventsFilter(),
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
              const PlacesList(),
            ],
          ),
        ],
      ),
    );
  }
}

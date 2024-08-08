import 'package:canoo/theme/app_theme.dart';
import 'package:canoo/views/explore/widgets/places_filter.dart';
import 'package:canoo/views/widgets/places_grid.dart';
import 'package:canoo/views/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExplorePlacesView extends StatefulWidget {
  const ExplorePlacesView({super.key});

  @override
  State<ExplorePlacesView> createState() => _ExplorePlacesViewState();
}

class _ExplorePlacesViewState extends State<ExplorePlacesView> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  void _showFilter(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      showDragHandle: true,
      backgroundColor: AppTheme.getModalBackgroundColor(context),
      builder: (ctx) => const PlacesFilter(),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 28, 20, 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () => _showFilter(context),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.sliders,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(width: 25),
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

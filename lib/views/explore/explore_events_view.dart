import 'package:canoo/directories/category.dart';
import 'package:canoo/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum EventFilter {
  thisWeek,
  nextWeek,
  all,
}

class ExploreEventsView extends StatefulWidget {
  const ExploreEventsView({super.key});

  @override
  State<ExploreEventsView> createState() => _ExploreEventsViewState();
}

class _ExploreEventsViewState extends State<ExploreEventsView> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  EventFilter _eventFilter = EventFilter.thisWeek;

  void _setEventFilter(EventFilter filter) {
    setState(() {
      _eventFilter = filter;
    });
  }

  ButtonStyle _getEventFilterBtnStyle(EventFilter filter) {
    if (_eventFilter == filter) {
      return Theme.of(context).filledButtonTheme.style!;
    }
    return AppTheme.getInactiveFilledButtonStyle(context);
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
                FilledButton(
                  onPressed: () => _setEventFilter(EventFilter.thisWeek),
                  style: _getEventFilterBtnStyle(EventFilter.thisWeek),
                  child: const Text('This week'),
                ),
                const SizedBox(width: 5),
                FilledButton(
                  onPressed: () => _setEventFilter(EventFilter.nextWeek),
                  style: _getEventFilterBtnStyle(EventFilter.nextWeek),
                  child: const Text('Next week'),
                ),
                const SizedBox(width: 5),
                FilledButton(
                  onPressed: () => _setEventFilter(EventFilter.all),
                  style: _getEventFilterBtnStyle(EventFilter.all),
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  // the aspect ratio here applies to the whole item, not only the image
                  childAspectRatio: MediaQuery.of(context).size.width * 0.433 / 280,
                ),
                children: [
                  for (int i = 0; i < 4; i++)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset(
                                  'assets/images/places/heritage-park-historical-village.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  padding: const EdgeInsets.all(5),
                                  color: Colors.green,
                                  child: CategoryIcon.icons[Category.train]!,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Text('TELUS Spark Science Centre'),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.location_on_rounded),
                            const SizedBox(width: 2),
                            Text(
                              'Calgary, AB',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      ],
                    )
                ],
              ),
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

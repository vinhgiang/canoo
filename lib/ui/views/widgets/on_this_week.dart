import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnThisWeek extends StatelessWidget {
  const OnThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
          color: Colors.white10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "what's on \nthis week",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const Row(
                children: [
                  Text('View all'),
                  SizedBox(width: 5),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 12,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white10,
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: 175,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/events/toronto-gone-wild.png',
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                color: Colors.green,
                                child: SvgPicture.asset(
                                  'assets/images/icons/tree.svg',
                                  semanticsLabel: 'Tree',
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Toronto Gone Wild: City Meets Nature at The Museums of Toronto',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.calendar_today_outlined),
                            const SizedBox(width: 5),
                            Text(
                              "10 Apr '24 - 3 Aug '24",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.location_on_rounded),
                            const SizedBox(width: 5),
                            Text(
                              'Toronto, ON',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

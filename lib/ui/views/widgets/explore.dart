import 'package:canoo/ui/views/widgets/slider/horizontal_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
            child: Text(
              'explore',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          HorizontalSlider(
            items: [
              Container(
                width: 175,
                height: 175,
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 100,
                      child: const Icon(
                        FontAwesomeIcons.dollarSign,
                        size: 65,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      color: Theme.of(context).colorScheme.primary,
                      width: double.infinity,
                      padding: const EdgeInsets.all(9),
                      child: Text(
                        'Latest \nDeals',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 175,
                height: 175,
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 100,
                      child: const Icon(
                        FontAwesomeIcons.handshake,
                        size: 65,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: double.infinity,
                      padding: const EdgeInsets.all(9),
                      child: Text(
                        'Volunterring \nOppotunities',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 175,
                height: 175,
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 100,
                      child: const Icon(
                        FontAwesomeIcons.faceGrinHearts,
                        size: 65,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: double.infinity,
                      padding: const EdgeInsets.all(9),
                      child: Text(
                        'Popular \nPlaces',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 175,
                height: 175,
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 100,
                      child: const Icon(
                        FontAwesomeIcons.calendarCheck,
                        size: 65,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      width: double.infinity,
                      padding: const EdgeInsets.all(9),
                      child: Text(
                        'Events on \nNow',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

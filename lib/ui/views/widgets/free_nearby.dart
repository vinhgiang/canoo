import 'package:canoo/directories/category.dart';
import 'package:canoo/ui/views/widgets/slider/horizontal_slider.dart';
import 'package:canoo/ui/views/widgets/slider/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FreeNearby extends StatelessWidget {
  const FreeNearby({super.key});

  List<SliderItem> getSliderItem() {
    List<SliderItem> items = [
      SliderItem(
        name: 'The Hanger Flight Museum',
        thumbnail: Image.asset(
          'assets/images/places/hangar-flight-museum.jpg',
          fit: BoxFit.cover,
          height: 220,
        ),
        address: 'Calgary, AB',
        category: Category.museum,
        icon: CategoryIcon.icons[Category.museum]!,
      ),
      SliderItem(
        name: 'Contemporary Calgary',
        thumbnail: Image.asset(
          'assets/images/places/contemporary.jpg',
          fit: BoxFit.cover,
          height: 220,
        ),
        address: 'Calgary, AB',
        category: Category.art,
        icon: CategoryIcon.icons[Category.art]!,
      ),
      SliderItem(
        name: 'Telus Spark Science Centre',
        thumbnail: Image.asset(
          'assets/images/places/telus-spark-6d.jpg',
          fit: BoxFit.cover,
          height: 220,
        ),
        address: 'Calgary, AB',
        category: Category.science,
        icon: CategoryIcon.icons[Category.science]!,
      ),
      SliderItem(
        name: 'Studio Bell, home of the National Music Centre',
        thumbnail: Image.asset(
          'assets/images/places/studio-bell.jpg',
          fit: BoxFit.cover,
          height: 220,
        ),
        address: 'Calgary, AB',
        category: Category.museum,
        icon: CategoryIcon.icons[Category.museum]!,
      ),
    ];

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'free nearby',
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
              )
            ],
          ),
          const SizedBox(height: 25),
          HorizontalSlider(
            items: getSliderItem(),
          ),
        ],
      ),
    );
  }
}

import 'package:canoo/data/dummy.dart';
import 'package:canoo/directories/category.dart';
import 'package:canoo/ui/views/widgets/slider/horizontal_slider.dart';
import 'package:canoo/ui/views/widgets/slider/slider_item.dart';
import 'package:canoo/utils/Utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class OnThisWeek extends StatelessWidget {
  const OnThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SliderItem> items = onThisWeekEvents.map((event) {
      final String provinceShort =
          Utils.getProvinceShortForm(event.address.province);

      String date = DateFormat("dd MMM, h:mm a").format(event.startDate);
      if (event.endDate != null) {
        final DateFormat dateFormat = DateFormat("dd MMM ''yy");
        date =
            '${dateFormat.format(event.startDate)} - ${dateFormat.format(event.endDate!)}';
      }

      return SliderItem(
        name: event.name,
        thumbnail: event.thumbnail!,
        address: '${event.address.city} , $provinceShort',
        category: event.category,
        date: date,
        icon: CategoryIcon.icons[event.category]!,
      );
    }).toList();

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
        HorizontalSlider(
          items: items,
        ),
      ],
    );
  }
}

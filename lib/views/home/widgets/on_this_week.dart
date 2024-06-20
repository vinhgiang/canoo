import 'package:canoo/data/dummy.dart';
import 'package:canoo/directories/category.dart';
import 'package:canoo/views/widgets/share/slider_section.dart';
import 'package:canoo/views/widgets/slider/horizontal_slider.dart';
import 'package:canoo/views/widgets/slider/slider_item.dart';
import 'package:canoo/utils/Utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OnThisWeek extends StatelessWidget {
  const OnThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFirst = true;
    final List<SliderItem> items = onThisWeekEvents.map((event) {
      final String provinceShort = Utils.getProvinceShortForm(event.address.province);

      String date = DateFormat("dd MMM, h:mm a").format(event.startDate);
      if (event.endDate != null) {
        final DateFormat dateFormat = DateFormat("dd MMM ''yy");
        date = '${dateFormat.format(event.startDate)} - ${dateFormat.format(event.endDate!)}';
      }

      final item = SliderItem(
        name: event.name,
        thumbnail: event.thumbnail!,
        address: '${event.address.city} , $provinceShort',
        category: event.category,
        date: date,
        icon: CategoryIcon.icons[event.category]!,
        isFirst: isFirst,
      );

      isFirst = false;

      return item;
    }).toList();

    return SliderSection(
      title: "what’s on \nthis week",
      slider: HorizontalSlider(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        items: items,
      ),
    );
  }
}

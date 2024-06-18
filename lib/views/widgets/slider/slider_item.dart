import 'package:canoo/directories/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderItem extends StatelessWidget {
  final String name;
  final Image thumbnail;
  final Category category;
  final SvgPicture icon;
  final String? address;
  final String? date;
  final String? description;

  const SliderItem({
    super.key,
    required this.name,
    required this.thumbnail,
    required this.category,
    required this.icon,
    this.address,
    this.description,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 7, 0),
      width: 151,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              thumbnail,
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.all(5),
                  color: Colors.green,
                  child: icon,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          if (date != null) ...[
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.calendar_today_outlined),
                const SizedBox(width: 2),
                Text(
                  date!,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ],
          if (address != null) ...[
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.location_on_rounded),
                const SizedBox(width: 2),
                Text(
                  address!,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ],
          if (description != null) ...[
            const SizedBox(height: 10),
            Text(
              description!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ],
      ),
    );
  }
}

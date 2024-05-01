import 'package:canoo/ui/views/widgets/slider/slider_item.dart';
import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {
  final List<SliderItem> items;

  const HorizontalSlider({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items,
        ),
      ),
    );
  }
}

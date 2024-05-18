import 'package:canoo/ui/views/widgets/share/slider_section.dart';
import 'package:canoo/ui/views/widgets/slider/horizontal_slider.dart';
import 'package:flutter/material.dart';

import '../../../data/dummy.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderSection(
      title: 'deals',
      slider: HorizontalSlider(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        items: deals,
      ),
    );
  }
}

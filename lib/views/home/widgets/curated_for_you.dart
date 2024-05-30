import 'package:canoo/views/widgets/share/slider_section.dart';
import 'package:canoo/views/widgets/slider/horizontal_slider.dart';
import 'package:flutter/material.dart';

class CuratedForYou extends StatelessWidget {
  const CuratedForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderSection(
      title: 'curated for \nyou',
      slider: HorizontalSlider(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        items: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Image.asset('assets/images/banners/canada-culture.jpg'),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Image.asset('assets/images/banners/summer-rockies.jpg'),
          ),
        ],
      ),
    );
  }
}

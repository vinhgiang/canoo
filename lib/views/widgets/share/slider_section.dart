import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliderSection extends StatelessWidget {
  final String title;
  final Widget slider;

  const SliderSection({
    super.key,
    required this.title,
    required this.slider,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            color: Theme.of(context).colorScheme.onBackground,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  children: [
                    Text('View all', style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(width: 2),
                    const Icon(FontAwesomeIcons.chevronRight, size: 10),
                    const SizedBox(width: 3),
                  ],
                ),
              ],
            ),
          ),
          slider,
        ],
      ),
    );
  }
}

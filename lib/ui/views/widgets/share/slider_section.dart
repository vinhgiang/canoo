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
            padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
            color: Colors.white10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
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
          slider,
        ],
      ),
    );
  }
}

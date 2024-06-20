import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {
  final List<Widget> items;
  final Color? backgroundColor;

  const HorizontalSlider({
    super.key,
    required this.items,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
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

import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {
  final List<Widget> items;

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

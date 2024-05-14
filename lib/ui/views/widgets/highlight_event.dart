import 'package:flutter/material.dart';

class HighlightEvent extends StatelessWidget {
  const HighlightEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Image.asset('assets/images/events/highlighted.png'),
    );
  }
}

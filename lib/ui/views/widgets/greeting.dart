import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hello, CAM VINH!',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Text('Check out what is happening arround you'),
        ],
      ),
    );
  }
}

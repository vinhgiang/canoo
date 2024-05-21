import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  final String? description;
  final Color? backgroundColor;

  const CallToAction({
    super.key,
    required this.title,
    this.description,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          if (description != null) ...[
            const SizedBox(height: 5),
            Text(
              description ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
          const SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Explore now'),
          ),
        ],
      ),
    );
  }
}
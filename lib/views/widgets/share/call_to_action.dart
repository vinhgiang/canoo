import 'package:canoo/theme/app_theme.dart';
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
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
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
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Explore now'),
          ),
        ],
      ),
    );
  }
}

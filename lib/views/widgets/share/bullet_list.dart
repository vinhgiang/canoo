import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;

  const BulletList(this.strings, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: strings.map((str) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\u2022',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 25,
                        height: 0.68,
                      ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    str,
                    softWrap: true,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          height: 1.4,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        );
      }).toList(),
    );
  }
}

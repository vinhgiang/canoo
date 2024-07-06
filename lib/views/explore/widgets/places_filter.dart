import 'package:flutter/material.dart';

class PlacesFilter extends StatelessWidget {
  const PlacesFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            color: Theme.of(context).colorScheme.onBackground,
            child: Text(
              'Filter venues',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              color: Theme.of(context).colorScheme.background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Switch(
                        value: true,
                        activeColor: Colors.red,
                        onChanged: (bool value) {},
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Show only venues I can access',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

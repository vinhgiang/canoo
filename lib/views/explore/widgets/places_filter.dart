import 'package:flutter/material.dart';

class PlacesFilter extends StatefulWidget {
  const PlacesFilter({super.key});

  @override
  State<PlacesFilter> createState() => _PlacesFilterState();
}

class _PlacesFilterState extends State<PlacesFilter> {
  bool _isFilterChanged = false;
  bool _isOnlyAccessibleVenues = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
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
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Theme.of(context).colorScheme.background,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Switch(
                            value: _isOnlyAccessibleVenues,
                            onChanged: (bool value) {
                              setState(() {
                                _isOnlyAccessibleVenues = value;
                                _isFilterChanged = true;
                              });
                            },
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'Show only venues I can access',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            if (_isFilterChanged)
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Apply'),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

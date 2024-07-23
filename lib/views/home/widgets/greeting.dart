import 'package:canoo/view_models/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Greeting extends ConsumerStatefulWidget {
  const Greeting({super.key});

  @override
  ConsumerState<Greeting> createState() => _GreetingState();
}

class _GreetingState extends ConsumerState<Greeting> {
  @override
  Widget build(BuildContext context) {
    String _profileName = HomeViewModel(ref).profileName;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // 2 spaces is intentional
            'hello,  $_profileName!',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
          const Text('Check out what’s happening around you'),
        ],
      ),
    );
  }
}

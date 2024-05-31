import 'package:canoo/view_models/more_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoreView extends ConsumerWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(35, 170, 35, 0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/canoo-into-canada.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('about', style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 45),
              Text('frequently asked questions', style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 45),
              InkWell(
                onTap: () {
                  ref.read(moreViewModelProvider).openPrivacyPolicy();
                },
                child: Text('privacy policy', style: Theme.of(context).textTheme.bodyLarge),
              ),
              const SizedBox(height: 45),
              InkWell(
                onTap: () {
                  ref.read(moreViewModelProvider).openTermsAndConditions();
                },
                child: Text('terms & conditions', style: Theme.of(context).textTheme.bodyLarge),
              ),
              const SizedBox(height: 45),
              Text('app version v 355', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    );
  }
}
